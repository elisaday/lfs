#!/bin/bash

pushd /sources

rm -rf make-4.1
tar xvf make-4.1.tar.bz2
cd make-4.1

./configure --prefix=/usr

make

make check

make install

popd
