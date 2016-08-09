#!/bin/bash

pushd $LFS/sources

rm -rf tar-1.28

tar xvf tar-1.28.tar.xz

cd tar-1.28

./configure --prefix=/tools || exit -1

make || exit -2

make install || exit -4

popd

