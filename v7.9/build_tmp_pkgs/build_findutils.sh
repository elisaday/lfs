#!/bin/bash

pushd $LFS/sources

rm -rf findutils-4.6.0

tar xvf findutils-4.6.0.tar.gz

cd findutils-4.6.0

./configure --prefix=/tools || exit -1

make || exit -2

make install || exit -4

popd

