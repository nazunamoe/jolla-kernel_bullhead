#!/bin/bash

#First of all, We need to make directory clean
make mrproper

#Set Build Environment for Google Nexus 5X
export ARCH=arm64

#I use UBERTC 6.0 from my local directory, you need to change this for use
export CROSS_COMPILE=~/ubertc/aarch64-linux-android-6.0-kernel/bin/aarch64-linux-android-

#make defconfig and here we go!
make bullhead_defconfig

make -j64
