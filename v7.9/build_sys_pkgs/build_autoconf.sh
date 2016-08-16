#!/bin/bash

pushd /sources

rm -rf autoconf-2.69
tar xvf autoconf-2.69.tar.xz
cd autoconf-2.69

./configure --prefix=/usr

make

make check

make install

popd