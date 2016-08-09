#!/bin/bash

pushd $LFS/sources

rm -rf dejagnu-1.5.3

tar xvf dejagnu-1.5.3.tar.gz

cd dejagnu-1.5.3

./configure --prefix=/tools || exit -1

make install || exit -2

popd

