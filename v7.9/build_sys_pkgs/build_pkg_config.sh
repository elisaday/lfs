#!/bin/bash

pushd /sources

rm -rf pkg-config-0.29

tar xvf pkg-config-0.29.tar.gz

cd pkg-config-0.29

./configure --prefix=/usr        \
            --with-internal-glib \
            --disable-host-tool  \
            --docdir=/usr/share/doc/pkg-config-0.29

make

make check

make install

popd

