#!/usr/bin/env bash
TOOLCHAIN=$(pwd)/../../toolchain/bin
CROSS_COMPILE=$TOOLCHAIN/mips-linux-gnu-
export CC=${CROSS_COMPILE}gcc
export CXX=${CROSS_COMPILE}cpp
export LD=${CROSS_COMPILE}ld
export CFLAGS="-muclibc -O2"
export CPPFLAGS="-muclibc -O2"
export LDFLAGS="-muclibc -O2"

./configure --host=mipsel-linux --prefix=${PWD}/_install

make -j4
make install
