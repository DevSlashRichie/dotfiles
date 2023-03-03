#!/bin/bash

echo Installing VimPlug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim';

echo Copying configuration to your system

mkdir -p ~/.config/nvim;
cp $(pwd)/init.vim ~/.config/nvim/init.vim;



