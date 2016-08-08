#!/bin/bash

pushd $LFS/sources

rm -rf patch-2.7.5

tar xvf patch-2.7.5.tar.xz

cd patch-2.7.5

./configure --prefix=/tools || exit -1

make || exit -2

make check || exit -3

make install || exit -4

popd

