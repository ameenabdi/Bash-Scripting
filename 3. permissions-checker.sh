#!/bin/bash
# Challenge 3: File Checker with Permissions
# Checks if a file exists and displays readable, writable, executable status

read -p "Enter filename to check: " filename

if [[ -f $filename ]] ;then
        echo "File Exists"
        [[ -r $filename ]] && echo "readable"
        [[ -w $filename ]] && echo "writable"
        [[ -x $filename ]] && echo "executable"
        else
                echo "File Doesn't Exist"
fi
