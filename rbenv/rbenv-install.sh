#!/usr/bin/env bash

# Installing rbenv dependencies ...
sudo apt install \
	libxslt1-dev \
	libcurl4-openssl-dev \
	libksba8 \
	libksba-dev \
	libqtwebkit-dev \
	libreadline-dev

# Installing rbenv, to change Ruby versions ...
git clone https://github.com/rbenv/rbenv.git ~/.rbenv

# Installing rbenv plugins ...
RBENV_PLUGINS_FOLDER=~/.rbenv/plugins
mkdir -p $RBENV_PLUGINS_FOLDER

# Installing rbenv-binstubs to make rbenv transparently aware of project-specific binstubs created by bundler ...
git clone https://github.com/ianheggie/rbenv-binstubs.git ${RBENV_PLUGINS_FOLDER}/rbenv-binstubs

# Installing rbenv-env, adds the rbenv env command that shows relevant environment variables ...
git clone https://github.com/ianheggie/rbenv-env.git ${RBENV_PLUGINS_FOLDER}/rbenv-env

# Installing rbenv-update, adds the rbenv update command that updated rbenv and all installed plugins ...
git clone https://github.com/rkh/rbenv-update.git ${RBENV_PLUGINS_FOLDER}/rbenv-update

# Installing ruby-build, to install Rubies ...
git clone https://github.com/rbenv/ruby-build.git ${RBENV_PLUGINS_FOLDER}/ruby-build

# Loading user environment ...
export PATH="${HOME}/.rbenv/bin:${PATH}"
eval "$(rbenv init -)"

# Installing Ruby ...
RUBY_VERSION=2.4.2
rbenv install -s ${RUBY_VERSION}

# Setting RUBY_VERSION as global default Ruby ...
rbenv global ${RUBY_VERSION}
rbenv rehash

# Updating to latest Rubygems version ...
gem update --system --no-document

# Installing Bundler to install project-specific Ruby gems ...
gem install bundler --no-document

# Configuring Bundler for faster, parallel gem installation ...
number_of_cores=$(nproc)
bundle config --global jobs $((number_of_cores - 1))


# vim:ft=sh
# File: $DOTFILES_PATH/rbenv/rbenv-install.sh
