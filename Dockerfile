FROM debian:bookworm-slim

ENV SYSTEM_ARCHITECTURE=x86_64
ENV WASI_SDK_VERSION=27
ENV WASI_SDK_VERSION_FULL=${WASI_SDK_VERSION}.0

RUN apt-get update
RUN apt-get install -y curl tar xz-utils

# Install wasi-sdk
RUN curl -L -o /tmp/wasi-sdk.tar.gz https://github.com/WebAssembly/wasi-sdk/releases/download/wasi-sdk-${WASI_SDK_VERSION}/wasi-sdk-${WASI_SDK_VERSION_FULL}-${SYSTEM_ARCHITECTURE}-linux.tar.gz
RUN tar -xzf /tmp/wasi-sdk.tar.gz -C /opt
RUN rm /tmp/wasi-sdk.tar.gz

RUN ln -s /opt/wasi-sdk-${WASI_SDK_VERSION_FULL}-${SYSTEM_ARCHITECTURE}-linux /opt/wasi-sdk
ENV PATH="/opt/wasi-sdk/bin:${PATH}"

# Install wasmtime 
RUN curl https://wasmtime.dev/install.sh -sSf | bash
ENV PATH="/root/.wasmtime/bin:${PATH}"

# Compile
WORKDIR /usr/app
COPY ./ ./

RUN clang++ -std=c++17 -o ./cpp/get_current_unixtime.wasm ./cpp/get_current_unixtime.cpp

