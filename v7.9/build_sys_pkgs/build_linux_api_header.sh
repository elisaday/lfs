#!/bin/bash

pushd /sources

rm -rf linux-4.4.2
tar xvf linux-4.4.2.tar.xz
cd linux-4.4.2

make mrproper

make INSTALL_HDR_PATH=dest headers_install
find dest/include \( -name .install -o -name ..install.cmd \) -delete
cp -rv dest/include/* /usr/include

popd


