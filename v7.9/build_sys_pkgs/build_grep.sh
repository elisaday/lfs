#!/bin/bash

pushd /sources

rm -rf grep-2.23
tar xvf grep-2.23.tar.xz 
cd grep-2.23

./configure --prefix=/usr --bindir=/bin

make

make check

make install

popd