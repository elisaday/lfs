#!/bin/bash

pushd $LFS/sources

rm -rf file-5.25

tar xvf file-5.25.tar.gz

cd file-5.25

./configure --prefix=/tools || exit -1

make || exit -2

make check || exit -3

make install || exit -4

popd

