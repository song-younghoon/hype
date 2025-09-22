clang++ -std=c++17 -O3 -flto --target=wasm32-wasip2 -o ./build/hype_cpp_app.wasm -mexec-model=reactor ./interface/application.cpp ./interface/application_component_type.o ./src/main.cpp && \
wasm-tools component wit ./build/hype_cpp_app.wasm && \
wasmtime compile ./build/hype_cpp_app.wasm -o ./bin/hype_cpp_app.cwasm
