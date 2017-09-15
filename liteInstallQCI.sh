#!/bin/bash

# QCI install by Reid Wyde and Alex Dexter


installed()
{
	return `dpkg -s $1 >/dev/null 2>&1`
}

checked()
{
	"$@"
	ERR=$?
	if [ $ERR -ne 0 ]; then
		echo "Error: $ERR"
		exit $ERR
	fi
}

if [ $# -ne 1 ]; then
	echo "QCI Install must be provided an API key as a parameter!"
fi

if ! [ $(basename `pwd`) = "qci" ]; then
	echo "Script must be run in git download directory as ./$0"
fi

if ! installed python3; then
	 sudo apt-get install -y python3
fi

echo "Python3 installed"

if ! installed python3-pip; then
	 sudo apt-get install -y python3-pip
fi
echo "Pip installed"

if ! installed wget; then
	sudo apt-get install -y wget
fi
echo "wget installed"

checked sudo -H pip3 install --upgrade pip
echo "Pip upgraded"

pip3 install qiskit
echo "QISkit installed"

sudo -H pip3 install jupyter
echo "Jupyter installed"

wget http://github.com/QISkit/qiskit-tutorial/archive/master.zip
echo "Samples downloaded"


unzip master.zip

if ! [ -d qiskit-tutorial-master ]; then
	echo "Problem installing!"
	exit 1
fi

./set-api-key.sh $1
if [ $? -ne 0 ]; then
	echo "Unable to set API key, quantum notebook won't work!"
	echo "Try running ./set-api-key.sh"
fi
echo "#######################################"
echo "# QISkit lite installed successfully! #"
echo "#######################################"

cd qiskit-tutorial-master
jupyter notebook


