#!/bin/bash
#Write a script that asks for a directory to back-up from the user, compresses it into a .tar.gz file and saves it the timestamp in the filename.
read -p "Enter directory to back up" backupdir
echo $backupdir
timestamp=$(date +"%Y-%M-%D_%H-%M-%S")
tar -cvf $backupdir.tar.gz .
backupname="$backupdir.tar.gz_backupproject_$timestamp"
echo "File backed-up $backupname"
