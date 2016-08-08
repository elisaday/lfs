#!/bin/bash

pushd $LFS/sources

rm -rf perl-5.22.1

tar xvf perl-5.22.1.tar.bz2

cd perl-5.22.1

sh Configure -des -Dprefix=/tools -Dlibs=-lm || exit -1

make || exit -2

cp -v perl cpan/podlators/pod2man /tools/bin || exit -3
mkdir -pv /tools/lib/perl5/5.22.1 || exit -4
cp -Rv lib/* /tools/lib/perl5/5.22.1 || exit -5

popd

