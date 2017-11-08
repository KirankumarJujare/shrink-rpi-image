#!/bin/bash
#Script to run on Raspberry PI after booting shrunken SD card to verify it worked. 
##1 - when starting RPi you will notice a blue screen saying resizing file system.

sudo su
cat boot.log | grep -i -e LSB -e resize
cat /var/log/kern.log | grep -i EXT4-fs
df -h
df -a
mount
fdisk -l

ls -lrt /dev/disk/*


