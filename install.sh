#!/bin/sh

echo "Create dotfile links."
ln -snfv ~/dotfiles/.vimrc ~
ln -snfv ~/dotfiles/vim/settings ~/.vim/settings
ln -snfv ~/dotfiles/vim/UltiSnips ~/.vim/UltiSnips
ln -snfv ~/dotfiles/vim/colors ~/.vim/colors
rm ~/Library/Application\ Support/lazygit/config.yml
ln -snfv ~/dotfiles/vim/lazygit/config.yml ~/Library/Application\ Support/lazygit/
# InstallFont
cd ~/Library/Fonts && curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete.otf
ln -snfv ~/dotfiles/tig/.tigrc ~/.tigrc
echo "Success"

