#!/bin/bash

# Check if the curl command is installed
if ! command -v curl &> /dev/null; then
  echo "Error: curl command not found."
  echo "Please install curl and try again."
  exit 1
fi

# Check if the tar command is installed
if ! command -v tar &> /dev/null; then
  echo "Error: tar command not found."
  echo "Please install tar and try again."
  exit 1
fi



# Check if the wget command is installed
if ! command -v wget &> /dev/null; then
  echo "Error: wget command not found."
  echo "Please install wget and try again."
  exit 1
fi

# Download the "get-pip.py" script
wget https://bootstrap.pypa.io/pip/get-pip.py

# Check if the sudo command is installed
if ! command -v sudo &> /dev/null; then
  echo "Error: sudo command not found."
  echo "Please install sudo and try again."
  exit 1
fi

# Check if the python3 command is installed
if ! command -v python3 &> /dev/null; then
  echo "Error: python3 command not found."
  echo "Please install python3 and try again."
  exit 1
fi

# Check the version of Python 3
python3_version=$(python3 --version | awk '{print $2}')
if [[ $python3_version < "3.6" ]]; then
  echo "Error: Python version $python3_version is installed, but version 3.6 or later is required."
  echo "Please upgrade Python and try again."
  exit 1
fi


# Install pip3 using the "get-pip.py" script with superuser privileges
sudo python3 get-pip.py  

# Install or upgrade the setuptools package using pip3
pip3 install --upgrade setuptools

# Check if the apt-get command is installed
if ! command -v apt-get &> /dev/null; then
  echo "Error: apt-get command not found."
  echo "Please install apt-get and try again."
  exit 1
fi

# Install the python3 development files using the apt package manager
sudo apt-get install python3-dev

# Install the PyCryptodome package using pip3
pip3 install pycryptodome   

# Install the distorm3 package using pip3
pip3 install distorm3    

# Check if the git command is installed
if ! command -v git &> /dev/null; then
  echo "Error: git command not found."
  echo "Please install git and try again."
  exit 1
fi

# Clone the volatility3 repository from GitHub
git clone https://github.com/volatilityfoundation/volatility3.git

# Change the current working directory to "/home/kali/volatility3"
cd volatility3

#

# Download the latest version of Volatility 3
curl -O https://github.com/volatilityfoundation/volatility3/releases/download/v3.0.0/volatility_3.0.0_beta.tar.gz

# Extract the archive
tar xvf volatility_3.0.0_beta.tar.gz

# Change to the extracted directory
cd volatility_3.0.0_beta

# Check if the python3 command is installed
if ! command -v python3 &> /dev/null; then
  echo "Error: python3 command not found."
  echo "Please install python3 and try again."
  exit 1
fi

# Install Volatility 3
python3 setup.py install

# Clean up
rm -rf volatility_3.0.0_beta.tar.gz volatility_3.0.0_beta