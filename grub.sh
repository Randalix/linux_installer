#!/usr/bin/env sh
sed -ie 's/GRUB_TIMEOUT=.*/GRUB_TIMEOUT=1/' /etc/default/grub
#sudo sed -ie 's/GRUB_TIMEOUT=.*/GRUB_TIMEOUT=2/' /etc/default/grub
#GRUB_DISABLE_SUBMENU=y
grub-mkconfig -o /boot/grub/grub.cfg
