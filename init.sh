location=de
read -p "Machine Name: " mymachine
read -p "New User Name: " myusr
read -p "Password: " passwd
printf "%s" $myusr > myusr
printf "%s" $passwd > mypass
printf "%s" $mymachine > mymachine
chmod 777 mymachine myusr mypass
