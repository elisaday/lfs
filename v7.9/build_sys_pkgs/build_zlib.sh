#!/bin/bash

pushd /sources

rm -rf zlib-1.2.8

tar xvf zlib-1.2.8.tar.xz

cd zlib-1.2.8

./configure --prefix=/usr || exit -1

make || exit -2
make check || exit -3

make install || exit -4

mv -v /usr/lib/libz.so.* /lib
ln -sfv ../../lib/$(readlink /usr/lib/libz.so) /usr/lib/libz.so

popd

