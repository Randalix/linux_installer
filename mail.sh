#!/usr/bin/bash
sudo apt install libpam-dev dh-autoreconf
mkdir -p ~/src
cd ~/src
git clone https://github.com/cruegge/pam-gnupg.git
cd ~/src/pam-gnupg
./autogen.sh
./configure
make
sudo make install

