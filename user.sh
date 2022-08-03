#!/usr/bin/env sh
mypass=$(cat mypass)
myusr=$(cat myusr)

printf "%s" $passwd | passwd &> /dev/null
useradd -m -c $myusr -s /bin/bash $myusr
printf "%s" $passwd | passwd $myusr &> /dev/null
pwconv
usermod -aG sudo $myusr
sudo groupadd -f muggle
