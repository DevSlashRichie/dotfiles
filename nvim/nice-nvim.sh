#!/bin/bash

echo Installing neovim packer

git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

git clone https://github.com/DevSlashRichie/nvim-dotfiles ~/.config/nvim

