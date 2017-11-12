#!/usr/bin/env bash

# Listing vscode installed extensions ...
# code --list-extensions > vscode/vscode-extensions.txt

# Installing vscode extensions ...
for e in $(cat ${DOTFILES_PATH}/vscode/vscode-extensions.txt); do code --install-extension $e; done


# vim:ft=sh
# File: $DOTFILES_PATH/vscode/ext-install.sh

