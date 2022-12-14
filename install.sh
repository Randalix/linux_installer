# Install basics
install="$(cat ./install)"
update="$(cat ./update)"
$update
$install openssh-server git

# Setup User
location=de
read -p "Machine Name" mymachine
read -p "New User Name: " myusr
read -p "Password: " passwd
printf "%s" $myusr > myusr
printf "%s" $passwd > mypass
printf "%s" $mymachine > mymachine
chmod 777 mymachine myusr mypass

echo "$mymachine" > /etc/hostname
echo "" >> /etc/hosts
echo -e "127.0.0.1\tlocalhost" >> /etc/hosts
echo -e "::1\t\tlocalhost" >> /etc/hosts
echo -e "127.0.1.1\t$mymachine.localdomain\t$mymachine" >> /etc/hosts
echo -e "127.0.1.1\t$mymachine.localdomain\t$mymachine" >> /etc/hosts
printf "%s" $passwd | passwd &> /dev/null
useradd -m -c $myusr -s /bin/bash $myusr
printf "%s" $passwd | passwd $myusr &> /dev/null
usermod -aG sudo $myusr
sudo groupadd -f muggle
sed -i  's/# No Password Rules/{N;d;}g' test
printf "%s\n%s %s" "# No Password Rules" $myusr "$(cat ./nopass)" > test

# Setup Location
echo "" > /etc/locale.gen
echo "de_DE.UTF-8 UTF-8">> /etc/locale.gen
echo "de_DE ISO-8859-1">> /etc/locale.gen
echo "de_DE@euro ISO-8859-15">> /etc/locale.gen
locale-gen
printf "KEYMAP=%s" $location >> /etc/vconsole.conf


$install -y  rsync console-data locales cryptsetup btrfs-progs

#cat ./nopass | sudo EDITOR='tee -a' visudo

# AUDIO
./audio.sh
