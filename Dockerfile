# Use Debian unstable as the base image
FROM debian:unstable

# Avoid interactive prompts during package installation
ENV DEBIAN_FRONTEND=noninteractive

ENV PLAYGROUND=True
ENV CMAKE_BUILD_TYPE="Release"

# Install build tools, Neovim dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    cmake \
    ninja-build \
    pkg-config \
    libtool \
    libtool-bin \
    gettext \
    unzip \
    git \
    libuv1-dev \
    libmsgpack-dev \
    libtermkey-dev \
    libvterm-dev \
    libunibilium-dev \
    libseccomp-dev \
    python3-dev \
    lua5.1 \
    lua5.1-dev \
    libluajit-5.1-dev \
    libjemalloc-dev \
 && rm -rf /var/lib/apt/lists/*

# Install common tools
RUN apt-get update && apt-get install -y \
    git \
    curl \
    tmux \
    tree \
    ripgrep \
    fzf \
    fish \
 && rm -rf /var/lib/apt/lists/*

WORKDIR /usr/src

RUN git clone --depth 1 https://github.com/neovim/neovim.git

WORKDIR /usr/src/neovim

RUN make CMAKE_BUILD_TYPE=${CMAKE_BUILD_TYPE}

RUN make install

WORKDIR /root/config

CMD ["fish"]

