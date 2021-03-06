#!/usr/bin/env bash

# Add to sources ...
# echo "deb https://dl.bintray.com/getinsomnia/Insomnia /" \
#     | sudo tee -a /etc/apt/sources.list.d/insomnia.list

# Add public key used to verify code signature ...
# wget --quiet -O - https://insomnia.rest/keys/debian-public.key.asc \
#     | sudo apt-key add -

# Refresh repository sources and install Insomnia ...
# sudo apt update
# sudo apt install insomnia

sudo snap install insomnia

# vim:ft=sh
# File: $DOTFILES_PATH/insomnia/insomnia-install.sh
