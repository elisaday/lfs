#!/bin/bash

pushd /sources

rm -rf flex-2.6.0
tar xvf flex-2.6.0.tar.xz 
cd flex-2.6.0

./configure --prefix=/usr --docdir=/usr/share/doc/flex-2.6.0

make

make check

make install

ln -sv flex /usr/bin/lex

popd