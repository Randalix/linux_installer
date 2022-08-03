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
echo -e "::1\t\tlocalhost" >> /etc/hosts
echo -e "127.0.1.1\t\t$mymachine" >> /etc/hosts
#echo -e "127.0.1.1\t$mymachine.localdomain\t$mymachine" >> /etc/hosts
#echo -e "127.0.1.1\t$mymachine.localdomain\t$mymachine" >> /etc/hosts
