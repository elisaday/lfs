#!/bin/bash

pushd /sources

rm -rf groff-1.22.3
tar xvf groff-1.22.3.tar.gz
cd groff-1.22.3

PAGE=A4 ./configure --prefix=/usr

make

make install

popd
