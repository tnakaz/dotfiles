#!/bin/sh

echo "Create dotfile links."
ln -snfv ~/dotfiles/.vimrc ~
ln -snfv ~/dotfiles/vim/settings ~/.vim/settings
ln -snfv ~/dotfiles/vim/UltiSnips ~/.vim/UltiSnips
echo "Success"

