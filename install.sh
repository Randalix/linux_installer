apt install openssh-server git
read -p "Machine Name" mymachine
read -p "New User Name: " myusr
read -p "Password: " passwd
printf "%s" $myusr > myusr
printf "%s" $passwd > mypass
printf "%s" $mymachine > mymachine
printf "%s" $passwd | passwd &> /dev/null
useradd -m -c $myusr -s /bin/bash $myusr
printf "%s" $passwd | passwd $myusr &> /dev/null
usermod -aG sudo $myusr

