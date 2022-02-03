#!/bin/sh


echo '[*] Installing basics...'
sudo apt update
sudo apt install curl git -y


echo '[*] Installing programming languages...'
sudo apt install python3 python3-pip default-jdk -y


echo '[*] Installing utilities...'
sudo apt install neovim zsh tmux zathura -y

echo '[*] Cloning dotfiles directory...'
git clone https://github.com/jackrmcshane/dotfiles ~/dotfiles
