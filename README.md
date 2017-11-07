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

sudo ./rpi-shrink.sh image.img


