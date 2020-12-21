#!/usr/bin/env bash

export PATH="$HOME/toolchains/proton-clang-20201219/bin:$PATH"

export CROSS_COMPILE=aarch64-linux-gnu-
export CROSS_COMPILE_ARM32=arm-linux-gnueabi-

cd ~/kernel/vantom
make O=out ARCH=arm64 sagit_defconfig
make -j4 O=out CC=clang AR=llvm-ar NM=llvm-nm OBJCOPY=llvm-objcopy OBJDUMP=llvm-objdump STRIP=llvm-strip
