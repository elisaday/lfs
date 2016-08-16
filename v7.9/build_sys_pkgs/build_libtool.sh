#!/bin/bash

pushd /sources

rm -rf libtool-2.4.6
tar xvf libtool-2.4.6.tar.xz
cd libtool-2.4.6

./configure --prefix=/usr

make 

make check

make install

popd
