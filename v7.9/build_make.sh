#!/bin/bash

pushd $LFS/sources

rm -rf make-4.1

tar xvf make-4.1.tar.bz2

cd make-4.1

./configure --prefix=/tools --without-guile || exit -1

make || exit -2

make check || exit -3

make install || exit -4

popd

