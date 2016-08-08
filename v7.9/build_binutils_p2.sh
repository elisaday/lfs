#!/bin/bash

pushd $LFS/sources/

rm -rf binutils-2.26

tar xvf binutils-2.26.tar.bz2
cd binutils-2.26

mkdir build
cd build

CC=$LFS_TGT-gcc                \
AR=$LFS_TGT-ar                 \
RANLIB=$LFS_TGT-ranlib         \
../configure                   \
    --prefix=/tools            \
    --disable-nls              \
    --disable-werror           \
    --with-lib-path=/tools/lib \
    --with-sysroot || exit -1

$MAKE_USE_CORE || exit -2
make install || exit -3

make -C ld clean || exit -4
make -C ld LIB_PATH=/usr/lib:/lib || exit -5
cp -v ld/ld-new /tools/bin

popd

