#!/bin/bash

pushd $LFS/sources

rm -rf gettext-0.19.7

tar xvf gettext-0.19.7.tar.xz

cd gettext-0.19.7

cd gettext-tools
EMACS="no" ./configure --prefix=/tools --disable-shared

make -C gnulib-lib || exit -1
make -C intl pluralx.c || exit -2
make -C src msgfmt || exit -3
make -C src msgmerge || exit -4
make -C src xgettext || exit -5

cp -v src/{msgfmt,msgmerge,xgettext} /tools/bin || exit -6

popd

