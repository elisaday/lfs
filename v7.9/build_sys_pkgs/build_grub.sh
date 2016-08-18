#!/bin/bash

pushd /sources

rm -rf grub-2.02~beta2
tar xvf grub-2.02~beta2.tar.xz
cd grub-2.02~beta2

./configure --prefix=/usr          \
            --sbindir=/sbin        \
            --sysconfdir=/etc      \
            --disable-grub-emu-usb \
            --disable-efiemu       \
            --disable-werror

make

make install

popd

