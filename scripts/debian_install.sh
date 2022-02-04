#!/bin/sh

echo '[*] Installing basics...'
sudo apt update
sudo apt install -y curl git


echo '[*] Installing utilities...'
sudo apt install -y neovim zsh tmux zathura


echo '[*] Installing programming languages...'
sudo apt install -y python3 python3-pip python3-venv default-jdk


echo '[*] Setting up Neovim...'
if [ ! -d ~/.config/nvim ]; then
    mkdir -p ~/.config/nvim
fi

sudo apt install exuberant-ctags -y


python3 -m venv ~/.config/nvim/env
source ~/.config/nvim/env/bin/activate
pip install wheel
pip install yapf doq
deactivate

sudo apt install -y silversearcher-ag
sudo apt install -y -o Dpkg::Options::="--force-overwrite" bat ripgrep # https://github.com/sharkdp/bat/issues/938

# installing vim-plug
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

if [ -f ~/.config/nvim/coc-settings.json ]; then
    ehco '[*] Backing up existing coc-settings.json'
    cp ~/.config/nvim/coc-settings.json ~/.config/nvim/coc-settings.json.old
fi


# Enter Neovim and install plugins with vim-plug's :PlugInstall and coc extensions with CoC's :CocInstall using a temporary init.vim, which avoids warnings about missing colorschemes, functions, etc
echo '[*] Running :PlugInstall within nvim ...'
sed '/call plug#end/q' nvim/init.vim > ~/.config/nvim/init.vim
nvim -c 'PlugInstall' -c 'qa'
rm ~/.config/nvim/init.vim

# Copy init.vim in current working directory to nvim's config location
echo '[*] Copying init.vim -> ~/.config/nvim/init.vim'
cp nvim/init.vim ~/.config/nvim/



echo '[*] Setting up zsh...'

# installing 'autojump' for zsh
git clone https://github.com/wting/autojump.git ~/autojump
cd ~/autojump
./install.py
cd ~/dotfiles
rm -rf ~/autojump

#sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
