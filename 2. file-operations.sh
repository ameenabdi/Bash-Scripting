#!/bin/bash
# Challenge 2: File Operations Script
# Creates a directory and file, writes the current date to the file

#Create a Directory
mkdir -p /home/bash_demo

#Create a file
touch /home/bash_demo/demo.txt

#Date Variable
date=$(date)

#Date into file
echo $date > /home/bash_demo/demo.txt

#Output
echo "Directory 'bash_demo' created. File 'demo.txt' created."

echo "File contents: This file was created by a Bash script on $date."
