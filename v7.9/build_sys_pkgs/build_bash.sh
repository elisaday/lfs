#!/bin/bash

pushd /sources

rm -rf bash-4.3.30
tar xvf bash-4.3.30.tar.gz
cd bash-4.3.30

patch -Np1 -i ../bash-4.3.30-upstream_fixes-3.patch

./configure --prefix=/usr                       \
            --docdir=/usr/share/doc/bash-4.3.30 \
            --without-bash-malloc               \
            --with-installed-readline

make
make install
mv -vf /usr/bin/bash /bin

exec /bin/bash --login +h

popd
