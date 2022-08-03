#!/usr/bin/env sh
# File Manager
install="$(cat ./install)"
update="$(cat ./update)"
$install vim nnn trash-cli zoxide fzf
echo "eval \"\$(zoxide init bash)\"" >> ~/.bashrc
