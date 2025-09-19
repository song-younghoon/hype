use wasmtime::*;
use wasmtime_wasi::{WasiCtxBuilder, preview1::*};

async fn run_wasm() -> std::result::Result<(), Box<dyn std::error::Error>> {
    let engine = Engine::default();

    let module = Module::from_file(&engine, "./cpp/get_current_unixtime.wasm")?;

    let mut linker: Linker<WasiP1Ctx> = Linker::new(&engine);
    add_to_linker_sync(&mut linker, |t| t)?;
    let instnace_pre = linker.instantiate_pre(&module)?;

    let wasi_ctx = WasiCtxBuilder::new().build_p1();

    let mut store = Store::new(&engine, wasi_ctx);
    let instance = instnace_pre.instantiate(&mut store)?;

    let get_current_unixtime =
        instance.get_typed_func::<(), i32>(&mut store, "get_current_unixtime")?;
    let unixtime = get_current_unixtime.call(&mut store, ())?;

    println!("get_current_unixtime from WASM: {}", unixtime);

    Ok(())
}

#[tokio::main]
async fn main() {
    if let Err(e) = run_wasm().await {
        eprintln!("Error running WASM: {}", e);
    }
}
