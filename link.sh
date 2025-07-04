#!/usr/bin/bash

ln -s $PWD/zshrc $HOME/.zshrc
ln -s $PWD/bashrc $HOME/.bashrc
ln -s $PWD/gitconfig $HOME/.gitconfig
mkdir ~/.vim
ln -s $PWD/vimrc $HOME/.vim/vimrc
ln -s $PWD/inputrc $HOME/.inputrc
ln -s $PWD/tmux.conf $HOME/.tmux.conf

