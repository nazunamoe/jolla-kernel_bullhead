#!/bin/bash

echo "Welcome to All-Automated Kernel Launching System by nazunamoe"

#First of all, We need to make directory clean
make mrproper

#Set Build Environment for Google Nexus 5X
export ARCH=arm64

#I use UBERTC 6.0 from my local directory, you need to change this for use
export CROSS_COMPILE=~/ubertc/aarch64-linux-android-6.0-kernel/bin/aarch64-linux-android-

#Make defconfig and here we go!
make bullhead_defconfig
echo "Let's Make kernel!"
make -j64

#Check zImage.gz-dtb
file="/home/nazunamoe/jolla/arch/arm64/boot/Image.gz-dtb"
if [ -e $file ];then
echo "Build succeed let's make zip package to flash"
cp $file ~/zip/jolla-kernel/bullhead/Image
cd ~/zip
zip -r ~/jolla-kernel_AIO_bullhead-unoffical-$(date '+%g%m%d').zip *
cd ~/jolla
echo "Make succeed!"
else
echo "Build Failed"
fi
