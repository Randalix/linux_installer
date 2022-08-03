#!/usr/bin/env sh
# Install basics
install="$(cat ./install)"
update="$(cat ./update)"
mypass=$(cat mypass)
myusr=$(cat myusr)
mymachine=$(cat mymachine)

echo "$mymachine" > /etc/hostname
echo "" >> /etc/hosts
echo -e "127.0.0.1\tlocalhost" > /etc/hosts
#echo -e "::1\t\tlocalhost" >> /etc/hosts
echo -e "127.0.1.1\t\t$mymachine" >> /etc/hosts
# The following lines are desirable for IPv6 capable hosts
echo -e "::1     localhost ip6-localhost ip6-loopback" >> /etc/hosts
echo -e "ff02::1 ip6-allnodes" >> /etc/hosts
echo -e "ff02::2 ip6-allrouters" >> /etc/hosts
#echo -e "127.0.1.1\t$mymachine.localdomain\t$mymachine" >> /etc/hosts
#echo -e "127.0.1.1\t$mymachine.localdomain\t$mymachine" >> /etc/hosts
