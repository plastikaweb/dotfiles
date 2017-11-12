#!/usr/bin/env bash

# Listing atom installed packages ...
# apm list -i -e -b

# Installing atom packages ...
for p in $(cat ${DOTFILES_PATH}/atom/atom-packages.txt); do apm install $p; done


# vim:ft=sh
# File: $DOTFILES_PATH/atom/apm-install.sh
