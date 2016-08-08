#!/bin/bash

pushd $LFS/sources

rm -rf gzip-1.6

tar xvf gzip-1.6.tar.xz

cd gzip-1.6

./configure --prefix=/tools || exit -1

make || exit -2

make check || exit -3

make install || exit -4

popd

