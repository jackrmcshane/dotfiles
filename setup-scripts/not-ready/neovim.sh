#!/bin/bash

# this script currently only works for debian based distributions


# make dir for neovim config
echo '[*] Preparing Neovim config directory...'
mkdir -p ~/.config/nvim


# installing nvim
echo '[*] Installing neovim...'
sudo apt update
sudo apt install neovim python3 python3-pip git curl -y

echo '[*] Installing vim-plug plugin manager...'
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
