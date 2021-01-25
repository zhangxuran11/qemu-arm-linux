# qenum-arm-linux
下载内核源码,例如(linux-4.19.162.tar.xz)
编译虚拟arm内核板型:
make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- vexpress_defconfig
make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- menuconfig
make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- -j zImage


brctrl addbr br0
brctrl addif br0 ens33
route add default dev br0

修改/etc/qemu-ifup:
brctrl addif br0 tap0

执行run.sh运行虚拟内核
