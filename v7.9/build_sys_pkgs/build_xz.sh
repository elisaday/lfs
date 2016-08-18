#!/bin/bash

pushd /sources

rm -rf xz-5.2.2
tar xvf xz-5.2.2.tar.xz
cd xz-5.2.2

sed -e '/mf\.buffer = NULL/a next->coder->mf.size = 0;' \
     -i src/liblzma/lz/lz_encoder.c

./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/xz-5.2.2

make

make check

make install
mv -v   /usr/bin/{lzma,unlzma,lzcat,xz,unxz,xzcat} /bin
mv -v /usr/lib/liblzma.so.* /lib
ln -svf ../../lib/$(readlink /usr/lib/liblzma.so) /usr/lib/liblzma.so

popd
