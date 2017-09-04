#!/bin/bash

cd ~

set -e

sudo apt-get -y install python-pip python-dev build-essential 
if [ ! $? = 0 ]; then
	echo "Failed to install pip. Install terminated."
	exit 1
fi

sudo pip install --upgrade pip
if [ ! $? = 0 ]; then
	echo "Failed to upgrade pip. Install terminated."
	exit 1
fi

pip install IBMQuantumExperience
if [ ! -d QCI ] && [ -e QCI ]; then
	echo "Unexpected file named QCI in home directory! Cannot install!"
	exit 1
elif [ ! -d QCI ]; then
	mkdir QCI
fi

cd QCI
echo "Welcome to QCI" > WelcomeToQCI.txt
mkdir IBMQuantumExperienceSDK

git clone https://github.com/IBM/qiskit-sdk-py.git IBMQuantumExperienceSDK/

if [ ! $? = 0 ]; then
	echo "git clone IBMQuantumExperienceSDK failed" 
	exit 1
fi 

pip install iPython

if [ ! $? = 0 ]; then
	echo "install of iPython failed" 
	exit 1
fi 



cd IBMQuantumExperienceSDK/qiskit-sdk-py

#source activate QISKitenv

make env

make run






