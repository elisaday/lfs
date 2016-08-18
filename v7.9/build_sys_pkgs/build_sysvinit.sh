#!/bin/bash

pushd /sources

rm -rf sysvinit-2.88dsf
tar xvf sysvinit-2.88dsf.tar.bz2
cd sysvinit-2.88dsf

patch -Np1 -i ../sysvinit-2.88dsf-consolidated-1.patch

make -C src

make -C src install

popd