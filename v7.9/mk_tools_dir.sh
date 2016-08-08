#!/bin/bash

if [ `id -u` -ne 0 ]; then
	echo 'need root'
	exit -1
fi

mkdir $LFS/tools/

ln -sv $LFS/tools /
