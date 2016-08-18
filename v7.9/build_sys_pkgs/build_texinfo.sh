#!/bin/bash

pushd /sources

rm -rf texinfo-6.1
tar xvf texinfo-6.1.tar.xz
cd texinfo-6.1

./configure --prefix=/usr --disable-static

make

make check

make install

make TEXMF=/usr/share/texmf install-tex

pushd /usr/share/info
rm -v dir
for f in *
  do install-info $f dir 2>/dev/null
done
popd

popd
