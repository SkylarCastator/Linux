#!/bin/bash
#!Get Vim
sudo apt-get update
apt-get dist-upgrade
sudo apt-get install vim

#!Set up Vundle and copy vimrc file into file path
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp ./vimrc ~/.vim/vimrc
ln ~/.vimrc ~/.vim/vimrc

#!Add in vim plugins 
vim +PluginInstall +qall

#! Need to link into git repos and download other tools
echo "dont forget to install / update YoucompleteMe"
echo "https://github.com/j1z0/dotfiles.git"

#!Extra commmands
apt install irssi #!Install IRC command line tool

#!Install Git 
#!sudo apt-get install git
#!git config --global user.name "Emma Paris"
#!git config --global user.email "eparis@atlassian.com"

#!Download Python Tools 
python --version
echo "Python 2.7.15 preferred"
apt-get install python-setuptools python-pip
pip install github3.py

echo "Enter python with python"
echo "import github3"
echo "exit()"

apt-get install tor
#!systemctl enable tor
#!proxychains iceweasel

apt-get install virtualbox
apt-get install tilix
apt-get install filezilla filezilla-common -y

#!git clone https://github.com/hak5darren/USB-Rubber-Ducky
#!cd USB-Rubber-Ducky/Encoder/
#!java -jar encoder.jar -i input_payload.txt -o inject.bin

#!passwd root

useradd -m user_std
passwd user_std
usermod -a -G sudo user_std