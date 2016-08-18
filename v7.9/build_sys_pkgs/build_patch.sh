#!/bin/bash

pushd /sources

rm -rf patch-2.7.5
tar xvf patch-2.7.5.tar.xz
cd patch-2.7.5

./configure --prefix=/usr

make

make check

make install

popd