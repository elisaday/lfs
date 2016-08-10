#!/bin/bash

pushd /sources

rm -rf bison-3.0.4
tar xvf bison-3.0.4.tar.xz 
cd bison-3.0.4

./configure --prefix=/usr --docdir=/usr/share/doc/bison-3.0.4

make 
make install

popd