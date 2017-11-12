#!/usr/bin/env bash

# Create an apt config file for this repository ...
curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | sudo bash

# Install the package ...
sudo apt install git-lfs

# Install the git command line extension ...
git lfs install


# vim:ft=sh
# File: $DOTFILES_PATH/git/git-lfs-install.sh
