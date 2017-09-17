conda install git
mkdir QCI
cd QCI
git clone https://github.com/QISKit/qiskit-tutorial.git
conda create -y -n QISKitenv python=3 pip scipy
activate QISKitenv
pip install -y qiskit
cd qiskit-tutorial
echo APItoken = "%1%" > Qconfig.py
echo.config = {"url": 'https://quantumexperience.ng.bluemix.net/api'}>> Qconfig.py
echo.if 'APItoken' not in locals(): >> Qconfig.py
echo.	raise Exception("Please set up your access token. See Qconfig.py.") >> Qconfig.py
conda install -y jupyter
jupyter notebook 


