#!/usr/bin/env sh
install="$(cat ./install)"
$install ntfs-3g
drive=$(lsblk -o +FSTYPE | grep ntfs | awk '{NF=1}1' | cut -c3- | fzf)
read -p "Mountpoint [/mnt/usb]: " mnt
sudo mkdir $mnt
sudo mount -t ntfs-3g /dev/$drive $mnt
