FROM mcr.microsoft.com/devcontainers/base:jammy

RUN apt-get update && apt-get -y install xz-utils make
RUN curl -s -o zig.tar.xz https://ziglang.org/builds/zig-linux-aarch64-0.12.0-dev.2059+42389cb9c.tar.xz && \
    mkdir -p /usr/local/bin/zig && \
    tar Jxfv zig.tar.xz -C /usr/local/bin --strip-components 1
