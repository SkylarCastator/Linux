#!/bin/bash

echo "Welcome, to start what do you want to set the username and password to?"
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
    * )echo "Please answer yes or no.";;
  esac
done

sudo apt-get update
sudo apt-get dist-upgrade

sudo apt-get install gnome-tweak-tool


#!-------------------------------------------
echo "Installing Vim"
sh ./InstallScripts/vim.sh

#!-------------------------------------------
#!Install Git 
sudo apt-get install git
echo "Username : "
read gitUserName
git config --global user.name $gitUserName
echo "Email : "
read gitEmailAddress
git config --global user.email $gitEmailAddress

#!-------------------------------------------
#!Download Python Tools 
python --version
echo "Python 2.7.15 preferred"
apt-get install python-setuptools python-pip
pip install github3.py

#Install Python 3.7
sudo apt-get install build-essential checkinstall

sudo apt-get install libreadline-gplv2-dev libncursesw5-dev libssl-dev \
    libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev libffi-dev zlib1g-dev

cd /usr/src

sudo wget https://www.python.org/ftp/python/3.7.4/Python-3.7.4.tgz

sudo tar xzf Python-3.7.4.tgz

cd Python-3.7.4
sudo ./configure --enable-optimizations
sudo make altinstall

#!Download Machine Learning and Data Analytics Python Packages
pip install numpy
pip install -U scikit-learn
pip install -U matplotlib 
pip install -U nltk
pip install seaborn
pip install -U panda
pip install -U textblob 
pip install paramiko

#!Set up build parameters for OpenCV
sudo apt-get install build-essential
sudo apt-get install cmake git libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev
sudo apt-get install python-dev python-numpy libtbb2 libtbb-dev libjpeg-dev libpng-dev libtiff-dev libjasper-dev libdc1394-22-dev

#!cd ~/<my_working _directory>
#!git clone https://github.com/opencv/opencv.git

echo "Enter python with python"
echo "import github3"
echo "import nltk"
echo "nltk.download()"
echo "select all packages"
echo "exit()"


#!-------------------------------------------
apt-get install tor
#!systemctl enable tor
#!proxychains iceweasel

apt-get install virtualbox
apt-get install tilix
apt-get install filezilla filezilla-common -y
#!Extra commmands
apt install irssi #!Install IRC command line tool


#!git clone https://github.com/hak5darren/USB-Rubber-Ducky
#!cd USB-Rubber-Ducky/Encoder/
#!java -jar encoder.jar -i input_payload.txt -o inject.bin


