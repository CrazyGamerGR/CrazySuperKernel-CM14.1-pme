#!/bin/bash
#
# Copyright - CrazyGamerGR
#     		 ________     __   ___
#    		/ ______|    |  | /  |
#    		|  |         |  |/  /
#   		|  |_____    |      \              
#   		\_______|    |__|\___|
##########################################
export ARCH=arm64
export CROSS_COMPILE=/home/francesco/aarch64-linux-android-6.0-kernel/bin/aarch64-linux-android-
##########################################
mkdir output
##########################################
make -C $(pwd) O=output cyanogenmod_pme_defconfig
make -C $(pwd) O=output
##########################################
cp output/arch/arm64/boot/Image $(pwd)/arch/arm64/boot/zImage
