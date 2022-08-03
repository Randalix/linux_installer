#!/usr/bin/env bash
install="$(cat ./install)"
$install exfat-fuse
drive=$(lsblk -o +FSTYPE | grep exfat | awk '{NF=1}1' | cut -c3- | fzf)
read -p "Mountpoint : " mnt
user=$(id -u)
group=$(id -g)
cmd="mount -t exfat -o rw,users,uid=$user,gid=$group,dmask=007,fmask=117 /dev/$drive $mnt"
sudo mkdir $mnt
sudo $cmd
