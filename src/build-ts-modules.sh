#!/bin/sh

git clone --depth 1 https://github.com/casouri/tree-sitter-module && \
    cd tree-sitter-module && \
    ./batch.sh && \
    mkdir -p /usr/local/lib/tree-sitter && \
    mv ./dist/* /usr/local/lib/tree-sitter/
