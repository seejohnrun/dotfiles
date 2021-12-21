#!/usr/bin/env bash

# install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# install the plugs
vim +PlugInstall +qall

# symlink the dotfiles
wd=$(pwd)
ln -sf $wd/.vimrc ~/.vimrc
ln -sf $wd/.tmux.conf ~/.tmux.conf
ln -sf $wd/.zshrc ~/.zshrc
ln -sf $wd/dotfiles-scripts ~/dotfiles-scripts
