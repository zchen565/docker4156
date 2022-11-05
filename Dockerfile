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
  cmake \
  mysql-server \
  net-tools
# bazel
RUN wget https://github.com/bazelbuild/bazel/releases/download/4.0.0/bazel-4.0.0-installer-linux-x86_64.sh
RUN chmod +x bazel-4.0.0-installer-linux-x86_64.sh
RUN ./bazel-4.0.0-installer-linux-x86_64.sh
RUN export PATH="$PATH:$HOME/bin"
RUN rm *.sh

# grpc is installed during bazel build

#Generates group
# RUN addgroup --gid ${GID} ${GNAME}

#Generates user
# RUN adduser --disabled-password --gecos '' --uid ${UID} --gid ${GID} --home /home/${UNAME} ${UNAME} && adduser ${UNAME} sudo && echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

USER root
WORKDIR /root