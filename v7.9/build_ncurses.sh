#!/bin/bash

pushd $LFS/sources

rm -rf ncurses-6.0

tar xvf ncurses-6.0.tar.gz
cd ncurses-6.0

sed -i s/mawk// configure

./configure --prefix=/tools \
            --with-shared   \
            --without-debug \
            --without-ada   \
            --enable-widec  \
            --enable-overwrite || exit -1

make || exit -2

make install || exit -3

popd

