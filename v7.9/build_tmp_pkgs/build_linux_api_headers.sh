#!/bin/bash

pushd $LFS/sources/

rm -rf linux-4.4.2

tar xvf linux-4.4.2.tar.xz
cd linux-4.4.2

make mrproper

make INSTALL_HDR_PATH=dest headers_install
cp -rv dest/include/* /tools/include

popd
