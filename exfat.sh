#!/usr/bin/env sh
install="$(cat ./install)"
$install exfat-fuse
drive=$(lsblk -o +FSTYPE | grep exfat | awk '{NF=1}1' | cut -c3- | fzf)
read -p "Mountpoint : " mnt
sudo mkdir $mnt
sudo mount -t exfat -o rw /dev/$drive $mnt
