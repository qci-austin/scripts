pip install -y qiskit
cd qiskit-tutorial
echo APItoken = "%1" > Qconfig.py
echo.config = {"url": 'https://quantumexperience.ng.bluemix.net/api'}>> Qconfig.py
echo.if 'APItoken' not in locals(): >> Qconfig.py
echo.	raise Exception("Please set up your access token. See Qconfig.py.") >> Qconfig.py
conda install -y jupyter
echo "QCI installed successfully"
jupyter notebook 


