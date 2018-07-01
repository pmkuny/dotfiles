#!/usr/bin/bash

echo "[INFO] Linking files.."
ln -s $PWD/bashrc $HOME/.bashrc
ln -s $PWD/gitconfig $HOME/.gitconfig
mkdir ~/.vim
ln -s $PWD/vimrc $HOME/.vim/vimrc
ln -s $PWD/ansible.cfg $HOME/.ansible.cfg
echo "[INFO] DONE"
