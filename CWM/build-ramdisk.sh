#!/bin/sh
cd ramdisk
find . | cpio -o -H newc > ../cwm_ramdisk
cd ..
gzip cwm_ramdisk cwm_ramdisk.gz
