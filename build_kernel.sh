#!/bin/bash

export ARCH=arm64
export CROSS_COMPILE=~/ubertc/aarch64-linux-android-6.0-kernel/bin/aarch64-linux-android-

make bullhead_defconfig

make -j64
