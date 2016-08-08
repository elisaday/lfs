#!/bin/bash

pushd $LFS/sources

rm -rf expect5.45

tar xvf expect5.45.tar.gz

cd expect5.45

cp -v configure{,.orig}
sed 's:/usr/local/bin:/bin:' configure.orig > configure

./configure --prefix=/tools       \
            --with-tcl=/tools/lib \
            --with-tclinclude=/tools/include || exit -1

make || exit -2

make test || exit -3

make SCRIPTS="" install

popd

