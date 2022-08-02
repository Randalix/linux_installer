# Install basics
install="$(cat ./install)"
update="$(cat ./update)"
$update
mypass=$(cat mypass)
myusr=$(cat myusr)
mymachine=$(cat myusr)

printf "%s" $passwd | passwd &> /dev/null
useradd -m -c $myusr -s /bin/bash $myusr
printf "%s" $passwd | passwd $myusr &> /dev/null
usermod -aG sudo $myusr
sudo groupadd -f muggle
