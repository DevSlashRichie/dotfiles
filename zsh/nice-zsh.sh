#!/bin/bash


src_dir=$(pwd)/plugins
dest_dir="$HOME/.config/zsh-plugins"

mkdir -p "$dest_dir"

cp -r "$src_dir"/* "$dest_dir"/


for plugin_file in "$dest_dir"/*; do
  echo "source $plugin_file" >> "$HOME/.zshrc"
done

echo zsh plugins ready! 
