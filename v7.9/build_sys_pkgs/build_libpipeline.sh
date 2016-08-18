#!/bin/bash

pushd /sources

rm -rf libpipeline-1.4.1
tar xvf libpipeline-1.4.1.tar.gz
cd libpipeline-1.4.1

PKG_CONFIG_PATH=/tools/lib/pkgconfig ./configure --prefix=/usr

make

make check

make install

popd
