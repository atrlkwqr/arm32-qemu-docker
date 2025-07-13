FROM arm32v7/debian:bookworm

RUN apt update && apt install -y \
    qemu-user-static \
    wget \
    gdb-multiarch \
    strace \
    file \
    less \
    vim \
    ca-certificates \
    && apt clean

RUN wget https://github.com/multiarch/qemu-user-static/releases/download/v4.2.0-7/qemu-arm-static \
    && chmod +x qemu-arm-static \
    && mv qemu-arm-static /usr/bin/qemu-arm-static

RUN echo 'vm.mmap_min_addr=0' > /etc/sysctl.d/qemu.conf

WORKDIR /mnt

CMD ["/bin/bash"]

