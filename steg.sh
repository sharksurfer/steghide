#!/usr/bin/bash
echo ">> Hello , this is a project to make the process of hiding files inside images much easier"
echo ">> Would you like to try it out?"


read answer
if [[ $answer = 'yes' ]]; then
  echo ">> Cool , make sure to use the small letter 'yes' word :)"
else
  echo ">> $(exit)"
fi
echo ">> Checking if steghide is installed"
echo $(sudo apt install steghide)
echo "Installing"
echo $(clear)
echo ">> Installed steghide"

echo ">> Now your current working directory is $(pwd)"
echo ">> Did you copy your photo and text file to this directory?"


read yes
if [[ $yes = 'yes' ]]; then
  echo $(ls)
fi


echo ">> Text file name?"
read text
echo ">> Photo file name?"
read photo
echo ">> Now the both files are $text and $photo ryt ?, this tool is gonna hide the text in that photo"
echo ">> Confirm with the process? yes or no"
read confirm
if [[ $confirm = 'yes' ]]; then
  echo ">>Starting the process... , Enter a password(strong one)"
else
  echo "Exiting the process $(exit)"
fi
echo "$(steghide embed -cf $photo -ef $text)"
