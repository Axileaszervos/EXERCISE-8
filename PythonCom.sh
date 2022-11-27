#/usr/bin/bash

echo "Do you have a file with python code or would you like to create a new one(type yes or no)?"
read case
if [ "$case" = "yes" ];
then
echo "Enter your filename:"
read filename
python3 $filename
elif [ "$case" = "no" ];
then
echo "create a new file, type your filename:"
read newfilename
echo "Congratulations, you have created a python file!"
vim $newfilename
python3 $newfilename
fi

