#!/bin/bash

# Ask user for directory
read -p "Enter directory to backup: " dir

# Check if directory exists
if [ ! -d "$dir" ]; then
    echo "Error: Directory exist cannot duplicate!"
    exit 1
fi

# Create backup filename with timestamp
timestamp=$(date +"%Y%m%d")
backup_file="backup_${timestamp}.tar.gz"

# Compress the directory
tar -czf "$backup_file" "$dir"

echo "Backup created: $backup_file"

