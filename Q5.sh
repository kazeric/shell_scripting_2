#!/bin/bash

# Prompt the user for the directory path
read -p "Enter the directory path: " directory

# Check if the directory exists
if [ ! -d "$directory" ]; then
  echo "Directory not found. Please provide a valid directory path."
  exit 1
fi

# Count the number of .bmp files in the directory
bmp_files=("$directory"/*.bmp)
num_bmp_files=${#bmp_files[@]}

# Check if there are .bmp files to convert
if [ "$num_bmp_files" -eq 0 ]; then
  echo "No .bmp files found in the specified directory."
  exit 1
fi

# Convert .bmp files to .jpeg files
for bmp_file in "${bmp_files[@]}"; do
  convert "$bmp_file" "$jpeg_file"
  rm $bmp_file
done

# Count the number of .jpeg files after conversion
jpeg_files=("$directory"/*.jpeg)
num_jpeg_files=${#jpeg_files[@]}

# Report the number of images converted
echo "Conversion complete. $num_bmp_files .bmp files converted to $num_jpeg_files .jpeg files."


























