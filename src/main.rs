use wasmtime::*;
use wasmtime_wasi::{WasiCtxBuilder, preview1::*};

async fn run_wasm() -> std::result::Result<(), Box<dyn std::error::Error>> {
    let mut config = Config::new();
    config.async_support(true);
    let engine = Engine::new(&config).unwrap();

    let module = unsafe { Module::deserialize_file(&engine, "./cpp/get_current_unixtime.cwasm") }?;

    let mut linker: Linker<WasiP1Ctx> = Linker::new(&engine);
    add_to_linker_async(&mut linker, |t| t)?;
    let instance_pre = linker.instantiate_pre(&module)?;

    let wasi_ctx = WasiCtxBuilder::new().build_p1();

    let mut store = Store::new(&engine, wasi_ctx);
    let instance = instance_pre.instantiate_async(&mut store).await?;

    let get_current_unixtime =
        instance.get_typed_func::<(), i32>(&mut store, "get_current_unixtime")?;
    let unixtime = get_current_unixtime.call_async(&mut store, ()).await?;

    println!("get_current_unixtime from WASM: {}", unixtime);

    Ok(())
}

#[tokio::main]
async fn main() {
    let task_count = 1024;

    let mut tasks = Vec::new();
    for _ in 0..task_count {
        let task = tokio::spawn(async {
            if let Err(e) = run_wasm().await {
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
