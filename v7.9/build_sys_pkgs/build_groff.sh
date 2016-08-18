#!/bin/bash

pushd /sources

rm -rf groff-1.22.3
tar xvf groff-1.22.3.tar.gz
cd groff-1.22.3

PAGE=<paper_size> ./configure --prefix=/usr

make

make install

popd
