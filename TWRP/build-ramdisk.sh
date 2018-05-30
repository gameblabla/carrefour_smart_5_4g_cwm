#!/bin/sh
cd ramdisk
find . | cpio -o -H newc > ../twrp_ramdisk
cd ..
gzip ./twrp_ramdisk ./twrp_ramdisk.gz
