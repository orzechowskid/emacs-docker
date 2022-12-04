#!/bin/sh

git clone --depth 1 https://github.com/casouri/tree-sitter-module && \
    cd tree-sitter-module && \
    ./batch.sh

# build.sh tries to run `git clone` which will fail since this directory already
# exists; this is expected since css-in-js does not live in the same git repo as
# other languages built by `tree-sitter-module`
git clone --depth 1 https://github.com/orzechowskid/tree-sitter-css-in-js && \
    ./build.sh css-in-js

mkdir -p /usr/local/lib/tree-sitter && \
    mv ./dist/* /usr/local/lib/tree-sitter/
