#!/usr/bin/env bash

# Install dependencies ...
sudo apt install pandoc

# Add to sources ...
echo "deb https://typora.io linux/" \
    | sudo tee -a /etc/apt/sources.list.d/typora.list

# Add public key used to verify code signature ...
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys BA300B7755AFCFAE

# Refresh repository sources and install Typora ...
sudo apt update
sudo apt install typora


# vim:ft=sh
# File: $DOTFILES_PATH/typora/typora-install.sh
