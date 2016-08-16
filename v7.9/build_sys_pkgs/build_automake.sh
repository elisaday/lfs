#!/bin/bash

pushd /sources

rm -rf automake-1.15
tar xvf automake-1.15.tar.xz
cd automake-1.15

sed -i 's:/\\\${:/\\\$\\{:' bin/automake.in

./configure --prefix=/usr --docdir=/usr/share/doc/automake-1.15

make

sed -i "s:./configure:LEXLIB=/usr/lib/libfl.a &:" t/lex-{clean,depend}-cxx.sh
make -j4 check

make install

popd
