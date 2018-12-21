#!/usr/bin/env bash

# Add Yarn’s official GPG key ...
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -

# Set up the stable repository ...
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

# Update the apt package index ...
sudo apt update

# Install the latest version of Yarn ...
sudo apt install --no-install-recommends -y yarn


# vim:ft=sh
# File: $DOTFILES_PATH/docker/docker-install.sh
