sudo apt install libpam-dev dh-autoreconf
mkdir -p ~/src
cd ~/src
git clone git@github.com:cruegge/pam-gnupg.git
cd pam-gnupg
./autogen.sh
./configure
make
sudo make install

