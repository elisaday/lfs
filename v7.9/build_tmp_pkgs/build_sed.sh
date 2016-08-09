#!/bin/bash

pushd $LFS/sources

rm -rf sed-4.2.2

tar xvf sed-4.2.2.tar.bz2

cd sed-4.2.2

./configure --prefix=/tools || exit -1

make || exit -2

make install || exit -4

popd

