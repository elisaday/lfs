#!/bin/bash

pushd /sources

rm -rf gmp-6.1.0

tar xvf gmp-6.1.0.tar.xz

cd gmp-6.1.0

ABI=32 ./configure --prefix=/usr    \
            --enable-cxx     \
            --disable-static \
            --docdir=/usr/share/doc/gmp-6.1.0 || exit -1

make || exit -2

make html || exit -3

make check 2>&1 | tee gmp-check-log

awk '/# PASS:/{total+=$3} ; END{print total}' gmp-check-log

make install
make install-html

popd

