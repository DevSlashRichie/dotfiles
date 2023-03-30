#!/bin/bash

TEMP_DIR=$(mktemp -d)
curl -L "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" -o $TEMP_DIR/kubectl

echo Temp downloaded into $TEMP_DIR

sudo install -o root -g root -m 0755 $TEMP_DIR/kubectl /usr/local/bin/kubectl

# sudo pacman -S kubectx
