#!/bin/bash

pushd /sources

rm -rf mpc-1.0.3

tar xvf mpc-1.0.3.tar.gz

cd mpc-1.0.3

./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/mpc-1.0.3

make
make html
make check

make install
make install-html

popd

