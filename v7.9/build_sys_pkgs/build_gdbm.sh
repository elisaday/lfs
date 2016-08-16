#!/bin/bash

pushd /sources

rm -rf gdbm-1.11
tar xvf gdbm-1.11.tar.gz
cd gdbm-1.11

./configure --prefix=/usr \
            --disable-static \
            --enable-libgdbm-compat

make

make check

make install

popd
