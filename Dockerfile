FROM ubuntu:20.04

ARG UNAME
ARG GNAME
ARG UID
ARG GID
ARG DEBIAN_FRONTEND=noninteractive


RUN apt update && apt install -y \
  build-essential \
  check \
  g++ \
  zip \
  unzip \
  sudo \
  tmux \
  vim \
  git \
  tmux \
  curl \
  wget \
  libmysqlclient-dev \
  build-essential \
  libmysqlcppconn-dev \
  autoconf \
  libtool \
  pkg-config \
  cmake
# cmake 
# RUN wget -q -O cmake-linux.sh https://github.com/Kitware/CMake/releases/download/v3.19.6/cmake-3.19.6-Linux-x86_64.sh
# RUN sh cmake-linux.sh -- --skip-license --prefix=$/usr/local
# RUN rm cmake-linux.sh
# RUN 
# bazel
RUN wget https://github.com/bazelbuild/bazel/releases/download/4.0.0/bazel-4.0.0-installer-linux-x86_64.sh
RUN chmod +x bazel-4.0.0-installer-linux-x86_64.sh
RUN ./bazel-4.0.0-installer-linux-x86_64.sh
RUN export PATH="$PATH:$HOME/bin"
RUN rm *.sh

# install mysql-server & grpc yourself
# otherwish the image is too big

#Generates group
# RUN addgroup --gid ${GID} ${GNAME}

#Generates user
# RUN adduser --disabled-password --gecos '' --uid ${UID} --gid ${GID} --home /home/${UNAME} ${UNAME} && adduser ${UNAME} sudo && echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

USER root
WORKDIR /root