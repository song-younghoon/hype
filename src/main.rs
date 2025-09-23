mod engine;

use std::sync::Arc;

use once_cell::sync::Lazy;
use tokio::sync::Mutex;

use crate::engine::*;

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
    let component = load_component("./HypeDotnetApp/bin/HypeDotnetApp.cwasm");

    tokio::task::block_in_place(|| {
        tokio::runtime::Handle::current()
            .block_on(async { Arc::new(Mutex::new(build_context(&component).await)) })
    })
});

#[tokio::main]
async fn main() {
    let task_count = 4;
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
