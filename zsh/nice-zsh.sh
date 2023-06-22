#!/bin/bash

# Will also install some from other parts
# https://github.com/gustavohellwig/gh-zsh

# zsh-completions
 git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions

# zsh-autosuggestions
 git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions


# fast-syntax-highlighting
git clone https://github.com/zdharma-continuum/fast-syntax-highlighting.git \
  ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/fast-syntax-highlighting


echo installing base configuration 

cat $(pwd)/.base-zrc > $HOME/.zshrc

# I am sure I need top fix this xd
# echo "plugins=(git fancy-ctrl-z zsh-autosuggestions fast-syntax-highlighting)"

# echo installing utilities

# $(pwd)/utilities/install-utilities.sh

