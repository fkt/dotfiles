#!/bin/sh

DOTFILES_SRC="$HOME/.dotfiles"
stow -t "$HOME" -d "$DOTFILES_SRC" vim config zsh gdb
