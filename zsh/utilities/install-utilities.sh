#!/bin/bash


# installing bat

# pacman -S bat --noconfirm 
# pacman -S lsd --noconfirm

aliases_file="$(pwd)/aliases.txt"
echo Creating aliases from: $aliases_file

while read -r line; do
  echo alias "$line" >> ~/.zshrc
done < "$aliases_file"

echo Done
