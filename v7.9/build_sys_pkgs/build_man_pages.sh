#!/bin/bash

pushd /sources

rm -rf man-pages-4.04
tar xvf man-pages-4.04.tar.xz

cd man-pages-4.04
make install

popd

