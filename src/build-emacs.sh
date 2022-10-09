#!/bin/sh

export LD_LIBRARY_PATH=/usr/local/lib/tree-sitter && \
    cd emacs && \
    ./autogen.sh && \
    ./configure && \
    make && \
    make install
