#!/bin/bash

pushd /sources

rm -rf diffutils-3.3
tar xvf diffutils-3.3.tar.xz
cd diffutils-3.3

sed -i 's:= @mkdir_p@:= /bin/mkdir -p:' po/Makefile.in.in

./configure --prefix=/usr

make

make check

make install

popd
