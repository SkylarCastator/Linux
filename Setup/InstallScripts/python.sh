#!/bin/bash

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


