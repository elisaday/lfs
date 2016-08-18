#!/bin/bash

pushd /sources

rm -rf findutils-4.6.0
tar xvf findutils-4.6.0.tar.gz
cd findutils-4.6.0

./configure --prefix=/usr --localstatedir=/var/lib/locate

make

make check

make install

mv -v /usr/bin/find /bin
sed -i 's|find:=${BINDIR}|find:=/bin|' /usr/bin/updatedb

popd
