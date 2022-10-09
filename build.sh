#!/bin/bash

docker build \
       --build-arg UID=$(id -u) \
       --build-arg GID=$(id -g) \
       --build-arg USER=$(id -u -n) \
       -t ubuntu:emacs \
       ./src
