#!/bin/bash

echo "If prompted give the password for sudo:"
sudo true
DISK=/dev/mmcblk0
PART="$DISK""p1"
umount $PART
COUNT=`sudo parted /dev/mmcblk0 print | grep boot | awk '{print $3}' | awk -F'M' '{print $1}'`
IMG=$1
sudo dd if=$DISK bs=1MB count=$COUNT | pv | xz -c | dd of=$IMG
