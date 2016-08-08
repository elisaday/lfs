#!/bin/bash

pushd $LFS/sources

rm -rf m4-1.4.17

tar xvf m4-1.4.17.tar.xz

cd m4-1.4.17

./configure --prefix=/tools || exit -1

make || exit -2

make check || exit -3

make install || exit -4

popd

