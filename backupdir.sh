#!/bin/bash
#Write a script that asks for a directory to back-up from the user, compresses it into a .tar.gz file and saves it the timestamp in the filename.
homedir=$(dirname "$backupdir")
targetdir=$(basename "$backupdir")
read -p "Enter directory to back up" backupdir
echo $backupdir
timestamp=$(date +"%Y-%m-%d_%H-%M-%S")
backupname="${backupdir}_backupproject_$timestamp.tar.gz"
tar -czvf $backupname.tar.gz -C "homedir" "targetdir"
echo "File backed-up $backupname"
