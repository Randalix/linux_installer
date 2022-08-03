#!/usr/bin/env sh
install="$(cat ./install)"
update="$(cat ./update)"
$update
FILE=myusr
if [ ! -f "$FILE" ]; then
    ./init.sh
fi

mypass=$(cat mypass)
myusr=$(cat myusr)
mymachine=$(cat myusr)

sudo cp -r /etc/sudoers /tmp/sudoers.tmp
sudo sed -i "s/# No Password Rules/{N;d;d;}/g" /tmp/sudoers.tmp
sudo bash -c 'printf "\n%s\n%s %s" "# No Password Rules" "$(cat ./myusr)" "$(cat ./nopass)" >> /tmp/sudoers.tmp'
#sudo printf "%s\n%s %s" "# No Password Rules" $myusr "$(cat ./nopass)" >> /tmp/sudoers.tmp

#printf "\n%s\ssword Rules" "$myusr" "$(cat ./nopass)" > /tmp/sudoers.tmp
sudo visudo -c -f /tmp/sudoers.tmp
if [ "$?" -eq "0" ]; then
    sudo cp /tmp/sudoers.tmp /etc/sudoers
fi
#sudo rm /tmp/sudoers.tmp

