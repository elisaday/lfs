#!/bin/bash

pushd /sources

rm -rf gawk-4.1.3
tar xvf gawk-4.1.3.tar.xz
cd gawk-4.1.3

./configure --prefix=/usr

make

make check

make install

mkdir -v /usr/share/doc/gawk-4.1.3
cp    -v doc/{awkforai.txt,*.{eps,pdf,jpg}} /usr/share/doc/gawk-4.1.3

popd
