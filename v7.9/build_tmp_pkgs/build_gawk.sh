#!/bin/bash

pushd $LFS/sources

rm -rf gawk-4.1.3

tar xvf gawk-4.1.3.tar.xz

cd gawk-4.1.3

./configure --prefix=/tools || exit -1

make || exit -2

make install || exit -4

popd

