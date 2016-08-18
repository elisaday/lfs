#!/bin/bash

pushd /sources

rm -rf iproute2-4.4.0
tar xvf iproute2-4.4.0.tar.xz
cd iproute2-4.4.0

sed -i /ARPD/d Makefile
sed -i 's/arpd.8//' man/man8/Makefile
rm -v doc/arpd.sgml

make

make DOCDIR=/usr/share/doc/iproute2-4.4.0 install

popd