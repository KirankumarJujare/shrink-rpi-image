# shrink-rpi-image

Shell script to shrink .img (raspberry pi / RPi) image file to remove unused space from partitions.


sudo apt-get install git
or
sudo yum install git

git clone https://github.com/tuxworld/shrink-rpi-image.git
cd shrink-rpi-image/
chmod +x rpi-shrink.sh

#copy existing inflated image file to the same directory
cp /path/image.img .

fdisk -lu image.img

###WARNING### 
#RUNNING THIS SCRIPT WILL MODIFY THE ORIGINAL .IMG which may not be recoverable if it goes wrong. 
#Make sure you have a bakup, or use a copy of the original just in case!!!
###############
sudo ./rpi-shrink.sh image.img


If successful output should look like this in terminal

[root@centos73]# ./shrint.sh /tmp/image.img
fsck from util-linux 2.23.2
e2fsck 1.42.9 (28-Dec-2013)
Pass 1: Checking inodes, blocks, and sizes
Pass 2: Checking directory structure
Pass 3: Checking directory connectivity
Pass 4: Checking reference counts
Pass 5: Checking group summary information
/dev/loop2: 11/110432 files (0.0% non-contiguous), 15791/441005 blocks
resize2fs 1.42.9 (28-Dec-2013)
Resizing the filesystem on /dev/loop2 to 8811 (4k) blocks.
The filesystem on /dev/loop2 is now 8811 blocks long.

fsck from util-linux 2.23.2
e2fsck 1.42.9 (28-Dec-2013)
Pass 1: Checking inodes, blocks, and sizes
Pass 2: Checking directory structure
Pass 3: Checking directory connectivity
Pass 4: Checking reference counts
Pass 5: Checking group summary information
/dev/loop2: 11/7888 files (0.0% non-contiguous), 8811/8811 blocks
Welcome to fdisk (util-linux 2.23.2).

Changes will remain in memory only, until you decide to write them.
Be careful before using the write command.


Command (m for help):
Disk /tmp/image.img: 1854 MB, 1854590976 bytes, 3622248 sectors
Units = sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disk label type: dos
Disk identifier: 0x11eccc69

         Device Boot      Start         End      Blocks   Id  System
/tmp/image.img1            8192       93813       42811    c  W95 FAT32 (LBA)
/tmp/image.img2           94208     3622247     1764020   83  Linux

Command (m for help): Partition number (1,2, default 2): Partition 2 is deleted

Command (m for help): Partition type:
   p   primary (1 primary, 0 extended, 3 free)
   e   extended
Select (default p): Partition number (2-4, default 2): First sector (2048-3622247, default 2048): Last sector, +sectors or +size{K,M,G} (94208-3622247, default 3622247): Partition 2 of type Linux and of size 34.4 MiB is set

Command (m for help):
Disk /tmp/image.img: 1854 MB, 1854590976 bytes, 3622248 sectors
Units = sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disk label type: dos
Disk identifier: 0x11eccc69

         Device Boot      Start         End      Blocks   Id  System
/tmp/image.img1            8192       93813       42811    c  W95 FAT32 (LBA)
/tmp/image.img2           94208      164697       35245   83  Linux

Command (m for help): The partition table has been altered!

Syncing disks.
