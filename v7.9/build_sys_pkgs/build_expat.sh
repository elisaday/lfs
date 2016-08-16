#!/bin/bash

pushd /sources

rm -rf expat-2.1.0
tar xvf expat-2.1.0.tar.gz
cd expat-2.1.0

./configure --prefix=/usr --disable-static

make

make check

make install

install -v -dm755 /usr/share/doc/expat-2.1.0
install -v -m644 doc/*.{html,png,css} /usr/share/doc/expat-2.1.0

popd