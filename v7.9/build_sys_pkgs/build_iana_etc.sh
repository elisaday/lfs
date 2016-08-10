#!/bin/bash

pushd /sources

rm -rf iana-etc-2.30
tar xvf iana-etc-2.30.tar.bz2 
cd iana-etc-2.30

make
make install

popd
