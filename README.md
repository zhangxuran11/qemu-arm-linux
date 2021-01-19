# qenum-arm-linux
下载内核源码,例如(linux-4.19.162.tar.xz)
编译虚拟arm内核板型:
make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- vexpress_defconfig
make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- menuconfig
make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- -j zImage

执行run.sh运行虚拟内核
