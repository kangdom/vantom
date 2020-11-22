#!/usr/bin/env bash

export PATH="$HOME/toolchains/proton-clang-20201114/bin:$PATH"

export CROSS_COMPILE=aarch64-linux-gnu-
export CROSS_COMPILE_ARM32=arm-linux-gnueabi-

make O=out ARCH=arm64 arch/arm64/configs/sagit_defconfig
make -j4 O=out CC=clang AR=llvm-ar NM=llvm-nm OBJCOPY=llvm-objcopy OBJDUMP=llvm-objdump STRIP=llvm-strip
## Set ^ this to $(nproc --all) if you're building on a more powerful machine: make -j$(nproc --all) and so on.
