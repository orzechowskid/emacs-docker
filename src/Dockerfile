FROM ubuntu:22.04

ARG UID
ARG GID
ARG USER

COPY ./entrypoint.sh ./entrypoint.sh

RUN groupadd -f -g $GID dockerusers
RUN id -ur $UID > /dev/null || useradd -u $UID -g $GID $USER -d /home/$USER
RUN apt-get update
RUN apt install -y \
    apt-transport-https \
    autoconf \
    bc \
    build-essential \
    ca-certificates \
    curl \
    g++-9 \
    gcc-9 \
    git \
    gnupg-agent \
    libgccjit-9-dev \
    libgif-dev \
    libgnutls28-dev \
    libgtk-3-dev \
    libharfbuzz-dev \
    libjansson-dev \
    libjansson4 \
    libjpeg-dev \
    libncurses5-dev \
    libpng-dev \
    librsvg2-dev \
    libsystemd-dev \
    libtiff-dev \
    libtree-sitter0 \
    libtree-sitter-dev \
    libxpm-dev \
    libxt-dev \
    pkg-config \
    software-properties-common \
    texinfo

COPY build-emacs.sh ./build-emacs.sh
RUN ./build-emacs.sh

RUN curl -sL https://deb.nodesource.com/setup_16.x | bash
RUN apt-get install -y \
    nodejs

COPY build-ts-modules.sh ./build-ts-modules.sh
RUN ./build-ts-modules.sh

ENTRYPOINT [ "/entrypoint.sh" ]
