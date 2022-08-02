# Setup Location
install="$(cat ./install)"
update="$(cat ./update)"
#dpkg-reconfigure locales
$install console-data locales locale-gen
echo "" > /etc/locale.gen
echo "de_DE.UTF-8 UTF-8">> /etc/locale.gen
echo "de_DE ISO-8859-1">> /etc/locale.gen
echo "de_DE@euro ISO-8859-15">> /etc/locale.gen
locale-gen de_DE.UTF-8
printf "KEYMAP=%s" de > /etc/vconsole.conf
