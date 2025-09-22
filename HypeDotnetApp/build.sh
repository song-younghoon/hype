dotnet build -c Release && \
wasm-tools component wit ./bin/Release/net10.0/wasi-wasm/native/HypeDotnetApp.wasm && \
wasmtime compile ./bin/Release/net10.0/wasi-wasm/native/HypeDotnetApp.wasm -o ./bin/HypeDotnetApp.cwasm
