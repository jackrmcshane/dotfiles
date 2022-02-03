#!/bin/bash

echo '[*] Installing basics...'
sudo apt update
sudo apt install git curl -y

echo '[*] Installing languages...'
sudo apt install python3 python3-pip -y

echo '[*] Installing utilities...'
sudo apt install tmux neovim zathura -y


echo '[*] Cloning dotfiles directory..'
git clone https://github.com/jackrmcshane/dotfiles ~/dotfiles
cd ~/dotfiles

echo '[*] Entering neovim setup...'
./neovim-setup.sh

echo '[*] Entering z-shell setup...'
./zsh-setup.sh

echo '[*] Entering dwm setup...'
./dwm-setup.sh
