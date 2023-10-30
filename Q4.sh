#!/bin/bash

echo "Enter the directory you want to search"
# Specify the directory you want to search
read directory

# Use the find command to search for empty folders (size=0)
empty_folders=($(find "$directory" -type d -empty))

# Check if any empty folders were found
if [ ${#empty_folders[@]} -eq 0 ]; then
    echo "No empty folders found in $directory."
else
    echo "Empty folders found in $directory:"
    for folder in "${empty_folders[@]}"; do
        # Use the stat command to get the creation time of each folder
        creation_time=$(stat -c "%z" "$folder")
        echo "Folder: $folder, Created: $creation_time"
    done
fi
