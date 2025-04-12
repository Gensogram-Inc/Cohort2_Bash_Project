#!/bin/bash
#Assignment2: BackUp Script: Write a script that asks for a directory to back-up from the user, compresses it into a .tar.gz file and saves it the timestamp in the filename.

echo "This is a backup script for backing up directories with timestamped archive files."
# Check if the user wants to back up the file
read -p " will you like to back up the file? (yes/no): " backup_choice
if [ "$backup_choice" != "yes" ]; then
  echo "Backup skipped."
  exit 0
else
  echo "Backup in progress..."  
fi

# Ask for directory to back up
read -p "Enter the full path of the directory to back up: " backup_dirpath

# Check if directory exists - if the given path is not a directory (! -d)
if [ ! -d "$backup_dirpath" ]; then
  echo "❌ Directory does not exist: $backup_dirpath"
  exit 1
fi

# Create backup name with timestamp: 
#Get the current date and time in the format YYYYMMDD_HHMMSS.
timestamp=$(date +"%Y%m%d_%H%M%S")
#Extracts just the last part of the directory path (the folder name) using basename.basename "/home/ada/projects" → "projects"
dir_name=$(basename "$backup_dirpath")
#Create the backup file name using the directory name and timestamp.
backup_file="${dir_name}_backup_${timestamp}.tar.gz"

# Check if tar is installed 
if ! command -v tar &> /dev/null; then
  echo "❌ tar is not installed. Please install it to proceed."
  exit 1
fi

# Perform the backup
# -C "$(dirname "$backup_dirpath")" changes to the parent directory of the backup_dirpath before creating the archive.Which is the same as saying:"Go to /home/ada, and create a compressed tarball of the projects folder, and save it as $backup_file"
#dirname strips off the last part of the path. So:dirname "/home/ada/projects" → "/home/ada"

tar -czf "$backup_file" -C "$(dirname "$backup_dirpath")" "$dir_name"

# Confirm completion
echo "✅ Backup complete: $backup_file"
