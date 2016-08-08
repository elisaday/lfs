#!/bin/bash

pushd $LFS/sources/

rm -rf tcl8.6.4

tar xvf tcl-core8.6.4-src.tar.gz

cd tcl8.6.4/unix

./configure --prefix=/tools

make

TZ=UTC make test

make install

chmod -v u+w /tools/lib/libtcl8.6.so

make install-private-headers

ln -sv tclsh8.6 /tools/bin/tclsh

