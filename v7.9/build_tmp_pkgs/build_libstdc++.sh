#!/bin/bash

pushd $LFS/sources/

rm -rf gcc-5.3.0

tar xvf gcc-5.3.0.tar.bz2
cd gcc-5.3.0

mkdir build
cd build

../libstdc++-v3/configure           \
    --host=$LFS_TGT                 \
    --prefix=/tools                 \
    --disable-multilib              \
    --disable-nls                   \
    --disable-libstdcxx-threads     \
    --disable-libstdcxx-pch         \
    --with-gxx-include-dir=/tools/$LFS_TGT/include/c++/5.3.0 || exit -1

make || exit -2
make install || exit -3

popd

