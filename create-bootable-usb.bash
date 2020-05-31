#!/bin/bash
#First unmount the Flashdrive, location can be changed
#umount /mnt/flashdrive 
#Format and repartition using fdisk
#sudo fdisk /dev/sdc1 
#Writing image File inputStream to fileOutputStream
echo "Enter ImgFilePath"
FilePath=${read}
echo "Enter OutputLocation"
OutputPath=${read}
sudo dd if=$FilePath of=$OutputPath

