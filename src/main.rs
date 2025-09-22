use std::sync::Arc;

use once_cell::sync::Lazy;
use tokio::sync::Mutex;
use wasmtime::{
    component::{Component, Instance, Linker},
    *,
};
use wasmtime_wasi::{p2::*, *};

pub struct ComponentRunStates {
    pub wasi_ctx: WasiCtx,
    pub resource_table: ResourceTable,
}

pub struct Context {
    pub instance: Instance,
    pub store: Store<ComponentRunStates>,
}

impl WasiView for ComponentRunStates {
    fn ctx(&mut self) -> WasiCtxView<'_> {
        WasiCtxView {
            ctx: &mut self.wasi_ctx,
            table: &mut self.resource_table,
        }
    }
}

static WASM_ENGINE: Lazy<Engine> = Lazy::new(|| {
    let mut config = Config::new();
    config.async_support(true);
    return Engine::new(&config).unwrap();
});

static WASM_LINKER_PROTOTYPE: Lazy<Linker<ComponentRunStates>> = Lazy::new(|| {
    let mut linker: Linker<ComponentRunStates> = Linker::new(&WASM_ENGINE);
    add_to_linker_async(&mut linker).unwrap();
    return linker;
});

async fn build_context(component: &Component) -> Context {
    let linker = WASM_LINKER_PROTOTYPE.clone();

    let wasi = WasiCtx::builder().inherit_stdio().inherit_args().build();
    let state: ComponentRunStates = ComponentRunStates {
        wasi_ctx: wasi,
        resource_table: ResourceTable::new(),
    };
    let mut store = Store::new(&WASM_ENGINE, state);

    let instance = linker
        .instantiate_async(&mut store, &component)
        .await
        .unwrap();

    return Context { instance, store };
}

async fn run_func(context: &mut Context) -> std::result::Result<(), Box<dyn std::error::Error>> {
    let func = context
        .instance
        .get_typed_func::<(), (i32,)>(&mut context.store, "get-current-unixtime")
        .unwrap();

    let unixtime = func.call_async(&mut context.store, ()).await?;
    println!("unixtime is {}", unixtime.0);
    func.post_return_async(&mut context.store).await?;

    Ok(())
}

static SHARED_CONTEXT: Lazy<Arc<Mutex<Context>>> = Lazy::new(|| {
    let component = unsafe {
        Component::deserialize_file(&WASM_ENGINE, "./HypeDotnetApp/bin/HypeDotnetApp.cwasm")
    }
    .unwrap();

    tokio::task::block_in_place(|| {
        tokio::runtime::Handle::current()
            .block_on(async { Arc::new(Mutex::new(build_context(&component).await)) })
    })
});

#[tokio::main]
async fn main() {
    let task_count = 1024;
    let mut tasks = Vec::new();

    for _ in 0..task_count {
        let task = tokio::spawn(async {
            let shard_context_clone = SHARED_CONTEXT.clone();
            let mut guard = shard_context_clone.lock().await;

            if let Err(e) = run_func(&mut *guard).await {
                eprintln!("Error running WASM: {}", e);
            }
        });
        tasks.push(task);
    }

    for task in tasks {
        if let Err(e) = task.await {
            eprintln!("Task failed: {}", e);
        }
    }
}
