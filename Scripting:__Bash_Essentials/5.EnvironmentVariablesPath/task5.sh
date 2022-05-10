#!/bin/bash 
mkdir homework # create homework folder in your user's home folder
SURNAME="Goncharov" # Create variable
# Variable
export SURNAME=$SURNAME # create SURNAME environment variable equal to your surname
env | grep SURNAME # verify that SURNAME variable is present in the environment using env command
echo -e '#!/bin/bash\nprintenv SURNAME' > $HOME/homework/myscript # create a script in homework folder that prints the value of SURNAME variable
chmod +x $HOME/homework/myscript
# PATH
FOLDER="homework"
export PATH=$PATH:$HOME/$FOLDER
bash myscript
