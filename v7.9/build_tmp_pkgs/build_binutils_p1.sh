#!/bin/bash

pushd $LFS/sources/

rm -rf binutils-2.26

tar xvf binutils-2.26.tar.bz2
cd binutils-2.26

mkdir build
cd build

../configure --prefix=/tools            \
             --with-sysroot=$LFS        \
             --with-lib-path=/tools/lib \
             --target=$LFS_TGT          \
             --disable-nls              \
             --disable-werror || exit -1

make || exit -2

case $(uname -m) in
  x86_64) mkdir -v /tools/lib && ln -sv lib /tools/lib64 ;;
esac

make install || exit -3

popd

