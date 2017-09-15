THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.



WELCOME TO QCI

Quantum Computing Initiative is a student research group based in Austin, Texas.

Our mission is to facilitate the advancement of Quantum Computing and Quantum Information Science. We strive to provide educational resources for students interested in the field of Quantum Computing and Quantum Information Science. We hold weekly lectures on the UT Austin campus. 

Visit qci-austin.com to learn more about our group and find resources in Quantum Computing. 
We gratefully thank the IBM Quantum Experience team and the quantum researchers of Applied Research Labs who have been extremely helpful in providing guidance and expertise.

Our thanks also goes to Dr. Scott Aaronson and doctoral student Patrick Rall. They have been invaluable in providing continual support and insight to the field of Quantum Computing. We would not be able to do what we do without them. 


RUNNING THE INSTALLATION

IBM QX provides a Python wrapper API for running computations on their quantum computers based in New York. Our script installs the necessary package dependencies and Quantum Information Science toolkit that IBM has created. 

Quick Instructions:

sudo apt-get update

sudo apt-get install

sudo apt-get install git

(set up your git credentials)

git clone https://github.com/qci-austin/scripts.git

sudo -H ./liteInstallQCI.sh <API token>

Detailed Instructions:

Step 0: 
Install Ubuntu 16.04 using Virtual Box or the environment of your choice, making sure to provide the system with at least 15 gigabytes of resources. We recommend 32 gigabytes. 

Step 1: Update package sources and your system by running the following terminal commands:

sudo apt-get update

sudo apt-get install

Step 2: If not already installed, install git
sudo apt-get install git

and then set up your git credentials, which include your username and email address. More information can be found at:
https://help.github.com/articles/setting-your-username-in-git/

Step 3: Make a workspace folder and then cd into that folder. Clone the qci script repository via the following command:
git clone https://github.com/qci-austin/scripts.git

Step 4: Visit the IBM Quantum Experience website and make an account to receive your API token. This is how your quantum computations are validated with the IBM's quantum platform. 
https://quantumexperience.ng.bluemix.net/qx/community

Step 5: Run the installation script with the following command using your API token (do not include the angle brackets in the command):
sudo -H ./liteInstallQCI.sh <API token>

Step 6: You are done. After a brief pause, your web browser should open with a Jupyter Notebook interface. This is a web based Python containerization. More information is available on the IBM QX github page at https://github.com/jupyter/notebook. 

If you see the message "QISkit lite installed successfully!" with no other error messages, then the script ran successfully. The script includes basic error handling, so pay attention to those messages in order to troubleshoot any problems.


FAQ:
Does this script install the complete IBM Quantum SDK?
No. This script installs QISkit, and necessary dependencies for the qiskit-tutorial-master distribution. It is meant to serve as a tool to get you started running qiskit Jupyter notebooks. 

Can I run this script on Ubuntu 14.04?
The script is untested on Ubuntu 14.04

Can I run this script on Windows?
No. QCI does not currently support a Windows installation configuration for IBM QISkit.

Does this script set up a distinct package environment?
No. We recommend that you create a clean installation of Ubuntu if you have other packages requiring particular package dependency versions. 

What packages does the script install?
Python3
Python3-pip 
wget
QISkit, and all necessary dependencies
Jupyter

This script does not install Conda, Anaconda, or miniconda.



If you have questions or comments please contact Reid Wyde at 
reidwyde@gmail.com 









 
















 
