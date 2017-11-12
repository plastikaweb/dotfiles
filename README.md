# Installation

Install git and some other tools we'd like to use:

	~$ sudo apt update
	~$ sudo apt install zsh vim git

Setup ssh keys:

	~$ eval "$(ssh-agent -s)"
	~$ ssh-add ~/.ssh/id_rsa

Deploy personal dotfiles:

	~$ git clone git@github.com:zuzust/dotfiles $HOME/.dotfiles

Link it all to $HOME:

	~$ $HOME/.dotfiles/install

Reference: https://github.com/anishathalye/dotbot

