FROM debian:bookworm-slim

ENV SYSTEM_ARCHITECTURE=x86_64
ENV WASI_SDK_VERSION=27
ENV WASI_SDK_VERSION_FULL=${WASI_SDK_VERSION}.0

RUN add-apt-repository ppa:dotnet-bootstrap/dotnet10.0.100-rc1-stage2
RUN apt-get update
RUN apt-get install -y curl tar xz-utils dotnet-sdk-10.0

# Install wasi-sdk
RUN curl -L -o /tmp/wasi-sdk.tar.gz https://github.com/WebAssembly/wasi-sdk/releases/download/wasi-sdk-${WASI_SDK_VERSION}/wasi-sdk-${WASI_SDK_VERSION_FULL}-${SYSTEM_ARCHITECTURE}-linux.tar.gz
RUN tar -xzf /tmp/wasi-sdk.tar.gz -C /opt
RUN rm /tmp/wasi-sdk.tar.gz

RUN ln -s /opt/wasi-sdk-${WASI_SDK_VERSION_FULL}-${SYSTEM_ARCHITECTURE}-linux /opt/wasi-sdk
ENV WASI_SDK_PATH="/opt/wasi-sdk"
ENV PATH="${WASI_SDK_PATH}/bin:${PATH}"

# Install wasmtime 
RUN curl https://wasmtime.dev/install.sh -sSf | bash
ENV PATH="/root/.wasmtime/bin:${PATH}"

# App Compile
WORKDIR /usr/app
COPY ./ ./

## C++
WORKDIR /usr/app/hype_cpp_app
RUN ./build.sh

## .NET
WORKDIR /usr/app/HypeDotnetApp
RUN ./build.sh
