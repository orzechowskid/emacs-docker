#!/bin/sh

if [ $TERM ]; then
	ARGS="-it"
fi

docker run \
       $ARGS \
       -e DISPLAY \
       -e HOME \
       -e PATH \
       -v /tmp:/tmp \
       -v /opt:/opt \
       -v $HOME:$HOME \
       --user="$(id -u):$(id --group)" \
       ubuntu:emacs
