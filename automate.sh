#!/bin/bash

#Terminator
apt-get install terminator -y

Update the package list and upgrade existing packages
sudo apt-get update

#Download Google
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
apt install ./google-chrome-stable_current_amd64.deb

#Install Sublime Text
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add - echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list sudo apt-get update sudo apt-get install sublime-text -y

cd /home/kali
sudo apt-get install build-essential   -y            

sudo apt-get install python3-dev -y

#Clone the distorm3 repository
git clone https://github.com/gdabah/distorm.git

#Navigate to the distorm3 repository directory
cd distorm

# give perms
chmod 755 setup.py

#Install the distorm3 library
python setup.py install

#Install required dependencies for Yara
sudo apt-get install autoconf libtool libjansson-dev libmagic-dev libssl-dev -y

#Clone the Yara repository
git clone https://github.com/VirusTotal/yara.git

#Navigate to the Yara repository directory
cd yara

#Generate the configure script
./bootstrap.sh

#Configure, compile and install Yara
./configure && make && sudo make install

#Install the pycrypto library
pip install pycrypto

#Install the Python Imaging Library (PIL)
pip install pillow

#Install openpyxl
pip install openpyxl


#volatility
git clone https://github.com/volatilityfoundation/volatility3.git

cd volatility3
chmod 755 setup.py    (or type sudo chmod 755 setup.py)
chmod 755 vol.py


