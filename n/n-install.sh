#!/usr/bin/env bash

# Installing n dependencies ...
sudo apt install -y curl make

# Installing n, to change Node versions ...
curl -L https://git.io/n-install | N_PREFIX=~/.n bash -s -- -y -n


# vim:ft=sh
# File: $DOTFILES_PATH/n/n-install.sh
