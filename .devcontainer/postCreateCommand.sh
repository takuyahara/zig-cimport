#!/bin/bash

sudo curl -s -o /var/tmp/zig.tar.xz https://ziglang.org/builds/zig-linux-aarch64-0.12.0-dev.3097+5c0766b6c.tar.xz && \
    sudo mkdir -p /usr/local/bin/zig && \
    sudo tar Jxfv /var/tmp/zig.tar.xz -C /usr/local/bin --strip-components 1 && \
    sudo rm -rf /var/tmp/zig.tar.xz
git -C /var/tmp clone https://github.com/zigtools/zls && \
    cd /var/tmp/zls && \
    zig build -Doptimize=ReleaseSafe && \
    sudo cp zig-out/bin/zls /usr/local/bin && \
    rm -rf /var/tmp/zls
