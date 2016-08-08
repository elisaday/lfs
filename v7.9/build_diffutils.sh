#!/bin/bash

pushd $LFS/sources

rm -rf diffutils-3.3

tar xvf diffutils-3.3.tar.xz

cd diffutils-3.3

./configure --prefix=/tools || exit -1

make || exit -2

make check || exit -3

make install || exit -4

popd

