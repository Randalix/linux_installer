# Install basics
install="$(cat ./install)"
update="$(cat ./update)"
$update
mypass=$(cat mypass)
myusr=$(cat myusr)
mymachine=$(cat myusr)

cp /etc/sudoers /etc/sudoers.tmp
sed -i  's/No Password Rules/{N;d;}g' /etc/sudoers.tmp
printf "%s\n%s %s" "# No Password Rules" $myusr "$(cat ./nopass)" > /etc/sudoers.tmp
visudo -c -f /tmp/sudoers.new
if [ "$?" -eq "0" ]; then
    cp /tmp/sudoers.new /etc/sudoers
fi
rm /etc/sudoers.tmp

