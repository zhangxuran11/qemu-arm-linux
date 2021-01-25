#!/bin/sh
qemu-system-arm \
    -M vexpress-a9 \
    -kernel ./zImage \
    -nographic \
    -m 1024M \
    -smp 4 \
    -sd ./rootfs.ext4 \
    -dtb vexpress-v2p-ca9.dtb \
    -append " root=/dev/mmcblk0 rw rootwait earlyprintk console=ttyAMA0"  
    -net nic \
    -net tap,ifname=tap0,script=/etc/qemu-ifup 
#    -netdev user,id=network0 -device ens33,netdev=network0
#    -user-net
#    -netdev vhost-user,id=ens33 \
