#!/usr/bin/env bash
export JPEGPATH="$(pwd)/libjpeg/_install"
TOOLCHAIN=$(pwd)/../toolchain/bin
CROSS_COMPILE=$TOOLCHAIN/mips-linux-gnu-
export CC=${CROSS_COMPILE}gcc
export CXX=${CROSS_COMPILE}cpp
export LD=${CROSS_COMPILE}ld
export CFLAGS="-muclibc -O2"
export CPPFLAGS="-muclibc -O2 -I${JPEGPATH}/include/"
export LDFLAGS="-muclibc -O2 -L${JPEGPATH}/lib"

export NM=nm
make clean
./configure --host=mipsel-linux --prefix=${PWD}/_install --disable-video --with-jpeg --without-imagemagick -without-gtk --without-python --without-qt

#make -j4
#make install
