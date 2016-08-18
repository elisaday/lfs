#!/bin/bash

pushd /sources

rm -rf less-481
tar xvf less-481.tar.gz
cd less-481

./configure --prefix=/usr --sysconfdir=/etc

make

make install

popd