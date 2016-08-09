#!/bin/bash

pushd $LFS/sources

rm -rf xz-5.2.2

tar xvf xz-5.2.2.tar.xz

cd xz-5.2.2

./configure --prefix=/tools || exit -1

make || exit -2

make install || exit -4

popd

