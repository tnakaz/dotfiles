#!/bin/sh

echo "Create dotfile links."
ln -snfv ~/dotfiles/.vimrc ~
ln -snfv ~/dotfiles/vim/settings ~/.vim/settings
ln -snfv ~/dotfiles/vim/UltiSnips ~/.vim/UltiSnips
ln -snfv ~/dotfiles/vim/colors ~/.vim/colors
rm ~/Library/Application\ Support/lazygit/config.yml
ln -snfv ~/dotfiles/vim/lazygit/config.yml ~/Library/Application\ Support/lazygit/
echo "Success"

