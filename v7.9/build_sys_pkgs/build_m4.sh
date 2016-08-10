#!/bin/bash

pushd /sources

rm -rf m4-1.4.17
tar xvf m4-1.4.17.tar.xz 
cd m4-1.4.17

./configure --prefix=/usr

make

make check

make install

popd
