#!/bin/bash

pushd $LFS/sources

rm -rf util-linux-2.27.1

tar xvf util-linux-2.27.1.tar.xz

cd util-linux-2.27.1

./configure --prefix=/tools                \
            --without-python               \
            --disable-makeinstall-chown    \
            --without-systemdsystemunitdir \
            PKG_CONFIG="" || exit -1

make || exit -2

make install || exit -3

popd

