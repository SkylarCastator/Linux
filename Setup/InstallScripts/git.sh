#!/bin/bash

#!Install Git 
sudo apt-get install git
echo "Username : "
read gitUserName
git config --global user.name $gitUserName
echo "Email : "
read gitEmailAddress
git config --global user.email $gitEmailAddress


