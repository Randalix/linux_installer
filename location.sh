# Setup Location
install="$(cat ./install)"
update="$(cat ./update)"
$install console-data locales
echo "" > /etc/locale.gen
echo "de_DE.UTF-8 UTF-8">> /etc/locale.gen
echo "de_DE ISO-8859-1">> /etc/locale.gen
echo "de_DE@euro ISO-8859-15">> /etc/locale.gen
locale-gen
printf "KEYMAP=%s" de >> /etc/vconsole.conf
