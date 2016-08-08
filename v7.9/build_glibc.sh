#!/bin/bash

pushd $LFS/sources/

tar xvf glibc-2.23.tar.xz

cd glibc-2.23

mkdir build
cd build

../configure                             \
      --prefix=/tools                    \
      --host=$LFS_TGT                    \
      --build=$(../scripts/config.guess) \
      --disable-profile                  \
      --enable-kernel=2.6.32             \
      --enable-obsolete-rpc              \
      --with-headers=/tools/include      \
      libc_cv_forced_unwind=yes          \
      libc_cv_ctors_header=yes           \
      libc_cv_c_cleanup=yes || exit -1

make || exit -2
make install || exit -3

popd

