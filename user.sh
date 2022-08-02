# Install basics
install="$(cat ./install)"
update="$(cat ./update)"
$update
mypass=$(cat mypass)
myusr=$(cat myusr)
mymachine=$(cat myusr)

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
