use once_cell::sync::Lazy;
use wasmtime::{
    component::{Component, Instance, Linker},
    *,
};
use wasmtime_wasi::{p2::*, *};

pub struct Context {
    pub instance: Instance,
    pub store: Store<ComponentRunStates>,
}

pub struct ComponentRunStates {
    pub wasi_ctx: WasiCtx,
    pub resource_table: ResourceTable,
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

pub fn load_component(file_path: &'static str) -> Component {
    let component = if file_path.ends_with(".cwasm") {
        unsafe { Component::deserialize_file(&WASM_ENGINE, file_path) }.unwrap()
    } else if file_path.ends_with(".wasm") || file_path.ends_with(".wat") {
        Component::from_file(&WASM_ENGINE, file_path).unwrap()
    } else {
        panic!("Unsupported file extension: {}", file_path);
    };

    return component;
}

pub async fn build_context(component: &Component) -> Context {
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
