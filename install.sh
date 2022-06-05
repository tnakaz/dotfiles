#!/bin/sh

echo "Create dotfile links."
ln -snfv ~/dotfiles/.vimrc ~
ln -snfv ~/dotfiles/vim/settings ~.vim/settings
echo "Success"

