#!/bin/bash

pushd $LFS/sources

rm -rf check-0.10.0

tar xvf check-0.10.0.tar.gz

cd check-0.10.0

PKG_CONFIG= ./configure --prefix=/tools

make

make check

make install

popd

