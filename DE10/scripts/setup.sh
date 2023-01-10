################ program FPGA on boot-up ##########################

mkdir -p fat
mount /dev/mmcblk0p1 fat

# Our bootloader expects the file to be named soc_system.rbf.
# Rename blink.rbf with whatever your file is called.
cp blink.rbf fat/soc_system.rbf

# Unmount the fat partition.
umount fat

reboot

###################################################################