#!/usr/bin/env sh
install="$(cat ./install)"
$install exfat-fuse
drive=$(lsblk -o +FSTYPE | grep exfat | awk '{NF=1}1' | cut -c3- | fzf)
read -p "Mountpoint : " mnt
user=$(uid)
group=$(gid)
sudo mkdir $mnt
sudo mount -t exfat -o rw,users,uid=$uuid,gid=$group,dmask=007,fmask=117 /dev/$drive $mnt
