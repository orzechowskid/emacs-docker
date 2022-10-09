#!/bin/sh

docker run \
       -it \
       -e DISPLAY \
       -e HOME \
       -v /tmp/.X11-unix:/tmp/.X11-unix \
       -v $PWD/home:$HOME \
       --user="$(id -u):$(id --group)" \
       ubuntu:emacs
