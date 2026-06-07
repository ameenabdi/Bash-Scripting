#!/bin/bash
# Challenge 4: Backup Script
# Backs up all .txt files from a source directory to a timestamped backup folder

date=$(date +"%Y-%m-%d_%H-%M")

read -p "Enter source directory: " input

count=$(ls $input/*.txt | wc -l)

if [[ -d $input ]]; then
        echo "Backup directory created: $input Copying .txt files..."
        mkdir -p /home/backup_folder.$date
        cp $input/*.txt /home/backup_folder.$date
        echo "Backup complete! Files backed up: $count "

fi

