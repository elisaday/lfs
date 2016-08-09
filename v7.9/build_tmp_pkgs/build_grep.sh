#!/bin/bash

pushd $LFS/sources

rm -rf grep-2.23

tar xvf grep-2.23.tar.xz

cd grep-2.23

./configure --prefix=/tools || exit -1

make || exit -2

make install || exit -4

popd

