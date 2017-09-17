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


QCI Officers

Bryce Fuller - President

Brendan Ngo - Vice President

Patrick Rall - Graduate Advisor

Will Orr - Head of Web Development

Brenden McDonough - Head of Logistics

Reid Wyde - Head of Software Development


RUNNING THE INSTALLATION (for Windows):

WARNING: THIS SCRIPT CONTAINS MINIMAL ERROR CHECKING AND IS STILL UNDER HEAVY DEVELOPMENT 

Step 0:

Download and install Anaconda for Python3.6, which can be found here:

https://www.anaconda.com/download/



Step 1:

Go to the IBM Quantum Experience website and make an account. The website can be found here:

https://quantumexperience.ng.bluemix.net/qx/community


Copy your API token (which is your unique ID for the IBM QX computer). We will use this token in step 4

https://quantumexperience.ng.bluemix.net/qx/community


Step 2:

Download the installQCIWindows.bat file from this Github page, either by using git or by direct download.


Step 3: 

Move the installQCIWindows.bat file to a clean directory


Step 4: 

Run the installation by starting an Anaconda prompt by right clicking and running as administrator. Type the following command (without angle brackets):

installQCIWindows.bat \<API Token\> 


Step 5: 

You are done with the installation. Your Anaconda terminal is now running in a specialized environment designed for the IBM Quantum Experience. Your browser will open up with a Jupyter notebook of the IBM Quantum Experience tutorials if the script ran successfully. You should see the message "QCI installed successfully" in your Anaconda terminal.Step 6:


Step 6:
When you are finished using the notebooks, you can close the browser tab or hit Ctrl-C twice from the Anaconda terminal. 
NOTE: In order to get out of the specialized conda environment for the IBM Quantum Experience, and return to a standard command prompt, type the following command:

deactivate


Step 7: 

To open your workstation again, you need to start a new Anaconda command prompt and go to the directory containing qiskit-tutorial. Run the following commands: 

activate QISKitenv

jupyter notebook



If you have any questions or comments, please contact Reid Wyde at reidwyde@gmail.com

