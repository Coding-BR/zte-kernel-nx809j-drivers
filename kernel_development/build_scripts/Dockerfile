FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends \
    bc \
    bindgen \
    bison \
    build-essential \
    ca-certificates \
    ccache \
    cpio \
    curl \
    dwarves \
    file \
    flex \
    gawk \
    gcc-aarch64-linux-gnu \
    gcc-arm-linux-gnueabi \
    git \
    libdw-dev \
    libelf-dev \
    libncurses-dev \
    libssl-dev \
    lld \
    llvm \
    make \
    ninja-build \
    pkg-config \
    python-is-python3 \
    python3 \
    python3-pip \
    rsync \
    rustc \
    cargo \
    unzip \
    xz-utils \
    zip \
    zstd \
    && rm -rf /var/lib/apt/lists/*

RUN cargo install --locked bindgen-cli --version 0.69.5

RUN git config --global --add safe.directory /work/src/kernel

ENV CCACHE_DIR=/work/cache/ccache
ENV CCACHE_MAXSIZE=20G
ENV USE_CCACHE=1
ENV PATH=/root/.cargo/bin:$PATH

WORKDIR /work

CMD ["/bin/bash"]
