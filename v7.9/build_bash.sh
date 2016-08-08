#!/bin/bash

pushd $LFS/sources

rm -rf bash-4.3.30

tar xvf bash-4.3.30.tar.gz

cd bash-4.3.30

./configure --prefix=/tools --without-bash-malloc || exit -1

make || exit -2

make test || exit -3

make install || exit -4

ln -sv bash /tools/bin/sh

popd

