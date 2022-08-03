#!/usr/bin/env sh
# Install basics
install="$(cat ./install)"
update="$(cat ./update)"
$update
mypass=$(cat mypass)
myusr=$(cat myusr)
mymachine=$(cat myusr)

cp /etc/sudoers /tmp/sudoers.tmp
#sed -i  "s/# No\ Password Rules/{N;d;}/g" /etc/sudoers.tmp
sudo printf "%s\n%s %s" "# No Password Rules" $myusr "$(cat ./nopass)" >> /tmp/sudoers.tmp
printf "\n%s\ssword Rules" "$myusr" "$(cat ./nopass)" > /tmp/sudoers.tmp
visudo -c -f /tmp/sudoers.tmp
if [ "$?" -eq "0" ]; then
    cp /tmp/sudoers.tmp /etc/sudoers
fi
rm /tmp/sudoers.tmp

