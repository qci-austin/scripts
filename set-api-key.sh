QISKIT_DIR="qiskit-tutorial-master"

if [ $# -ne 1 ]; then
	echo "Provide API key as a parameter to set the API key"
	exit 1
fi

if ! [ -f Qconfig.py.default ]; then
	echo "No base Qconfig.py! Re-clone the git repo!"
	exit 1
fi

if ! [ -d "$QISKIT_DIR" ]; then
	echo "QISkit not installed! Run ./liteInstallQCI.sh first!"
	exit 1
fi

echo "APItoken = \"$1\"" > "$QISKIT_DIR"/Qconfig.py
cat Qconfig.py.default >> "$QISKIT_DIR"/Qconfig.py

echo "API key set to \"$1\" successfully!"

exit 0
