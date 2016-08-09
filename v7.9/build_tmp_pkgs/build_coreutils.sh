#!/bin/bash

pushd $LFS/sources

rm -rf coreutils-8.25

tar xvf coreutils-8.25.tar.xz

cd coreutils-8.25

./configure --prefix=/tools --enable-install-program=hostname || exit -1

make || exit -2

make install || exit -4

popd


