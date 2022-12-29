#!/bin/sh

export LD_LIBRARY_PATH=/usr/local/lib/tree-sitter && \
    git clone --depth 1 --branch emacs-29 git://git.savannah.gnu.org/emacs.git && \
    cd emacs && \
    ./autogen.sh && \
    ./configure && \
    make bootstrap && \
    make install
