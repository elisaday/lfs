#!/bin/bash

pushd /sources

rm -rf bc-1.06.95
tar xvf bc-1.06.95.tar.bz2
cd bc-1.06.95

patch -Np1 -i ../bc-1.06.95-memory_leak-1.patch

./configure --prefix=/usr           \
            --with-readline         \
            --mandir=/usr/share/man \
            --infodir=/usr/share/info

make
make install

popd

