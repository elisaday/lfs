#!/bin/bash

cd /sources

rm -rf lfs-bootscripts-20150222
tar xvf lfs-bootscripts-20150222.tar.bz2
cd lfs-bootscripts-20150222

make install

