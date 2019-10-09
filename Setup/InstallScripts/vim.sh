#!/bin/bash

#!Install Vim
sudo apt-get install vim

#!Set up Vundle and copy vimrc file into file path
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
#!cp ./vimrc ~/.vim/vimrc
#!ln ~/.vimrc ~/.vim/vimrc

#!Add in vim plugins 
vim +PluginInstall +qall

sudo apt-get install gnome-tweak-tool

#! Need to link into git repos and download other tools
echo "dont forget to install / update YoucompleteMe"
echo "https://github.com/j1z0/dotfiles.git"


