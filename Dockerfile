# Use Debian unstable as the base image
FROM debian:unstable

# Avoid interactive prompts during package installation
ENV DEBIAN_FRONTEND=noninteractive

# Install build tools, Neovim dependencies, and Fish shell
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
    fish \
 && rm -rf /var/lib/apt/lists/*

# Set working directory for source code
WORKDIR /usr/src

# Clone the Neovim repository (adjust branch or tag as needed)
RUN git clone https://github.com/neovim/neovim.git

# Switch to the Neovim source directory
WORKDIR /usr/src/neovim

# Build Neovim with a release configuration including debug information
RUN make CMAKE_BUILD_TYPE=RelWithDebInfo

# Install Neovim (by default, this installs into /usr/local)
RUN make install

# Set the default command to run Fish shell interactively
CMD ["fish"]

