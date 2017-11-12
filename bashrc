# vim:ft=sh
# File: $DOTFILES_PATH/bashrc


# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

export DOTFILES_PATH="${HOME}/.dotfiles"
export BASH_DOTFILES_PATH="${DOTFILES_PATH}/bash"

. ${BASH_DOTFILES_PATH}/env
. ${BASH_DOTFILES_PATH}/config
. ${BASH_DOTFILES_PATH}/aliases
. ${BASH_DOTFILES_PATH}/functions

