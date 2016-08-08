#!/bin/bash

pushd $LFS/sources

rm -rf bzip2-1.0.6

tar xvf bzip2-1.0.6.tar.gz

cd bzip2-1.0.6

make

make PREFIX=/tools install

popd


