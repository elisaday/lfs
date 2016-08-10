#!/bin/bash

pushd /sources

rm -rf libcap-2.25

tar xvf libcap-2.25.tar.xz 

cd libcap-2.25

sed -i '/install.*STALIBNAME/d' libcap/Makefile

make

make RAISE_SETFCAP=no prefix=/usr install
chmod -v 755 /usr/lib/libcap.so

mv -v /usr/lib/libcap.so.* /lib
ln -sfv ../../lib/$(readlink /usr/lib/libcap.so) /usr/lib/libcap.so

popd
