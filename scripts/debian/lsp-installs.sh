
# install npm for neovim
sudo npm install -g neovim

# python lsp install
sudo npm i -g pyright

# c, cpp, ... lsp install
sudo apt install clangd-12
# make clangd-12 default clangd
sudo update-alternatives --install /usr/bin/clangd clangd /usr/bin/clangd-12 100

sudo npm i -g bash-language-server
sudo npm -g vim-language-server
