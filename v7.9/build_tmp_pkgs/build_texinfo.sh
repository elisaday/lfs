#!/bin/bash

pushd $LFS/sources

rm -rf texinfo-6.1

tar xvf texinfo-6.1.tar.xz

cd texinfo-6.1

./configure --prefix=/tools || exit -1

make || exit -2

make install || exit -4

popd

