conda install git
mkdir QCI
cd QCI
git clone https://github.com/QISKit/qiskit-tutorial.git
conda create -y -n QISKitenv python=3 pip scipy
activate QISKitenv
.\installQCIWindows2.bat %1

