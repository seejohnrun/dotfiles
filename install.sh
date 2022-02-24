#!/usr/bin/env bash

# symlink the dotfiles
wd=$(pwd)
ln -sf $wd/.vimrc ~/.vimrc
ln -sf $wd/.tmux.conf ~/.tmux.conf
ln -sf $wd/.zshrc ~/.zshrc
ln -sf $wd/.bashrc ~/.bashrc

# install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# install the plugs
vim +PlugInstall +qall > /dev/null

# install packages I always want
if [ $CODESPACES == 'true' ] ; then
  sudo apt install -y tmux
fi

