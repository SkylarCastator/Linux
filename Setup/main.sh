#!/bin/bash

printf "Welcome, to start what do you want to set the username and password to?"
read -p "Username : " computerUsername
read -p "Password : " computerPassword
useradd -m $computerUserName
passwd $computerPassword

#! Add Other Users
#!usermod -a -G sudo user_std
while true; do 
  read -p "Do you wish to add more users to this device?" yn
  case $yn in
    [Yy]* ) break;;
    [Nn]* ) exit;;
    * )printf "Please answer yes or no.";;
  esac
done

sudo apt-get update
sudo apt-get dist-upgrade
sudo apt-get install gnome-tweak-tool

#!-------------------------------------------
printf "Installing Vim"
sh ./InstallScripts/vim.sh

printf "Installing Git"
sh ./InstallScripts/git.sh

printf "Install Python"
sh ./InstallScripts/python.sh

printf "Install Applications"
sh ./InstallScripts/applications.sh

printf "\e[32m Finished \e[0m" 
printf -- '\n'
exit 0
