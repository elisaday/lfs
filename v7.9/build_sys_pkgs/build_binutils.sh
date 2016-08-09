#!/bin/bash

pushd /sources

rm -rf binutils-2.26

tar xvf binutils-2.26.tar.bz2

cd binutils-2.26

expect -c "spawn ls"

patch -Np1 -i ../binutils-2.26-upstream_fix-2.patch

mkdir build
cd build

../configure --prefix=/usr   \
             --enable-shared \
             --disable-werror || exit -1

make tooldir=/usr || exit -2

make check

make tooldir=/usr install

popd

