#!/usr/bin/env bash

# install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# install the plugs
vim +PlugInstall +qall

# symlink the dotfiles
ln -s .vimrc ~/.vimrc
ln -s .tmux.conf ~/.tmux.conf
ln -s .zshrc ~/.zshrc
