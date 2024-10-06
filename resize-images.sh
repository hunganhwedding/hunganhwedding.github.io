#!/bin/bash

# Check if the input argument is provided
if [ -z "$1" ]; then
  echo "Usage: $0 /path/to/folder"
  exit 1
fi

# Loop through all image files in the specified folder
for image in "$1"/*.{jpg,jpeg,png,gif}; do
  # Check if the image file exists
  if [ -e "$image" ]; then
    # Resize the image to 50% of its original size
    convert "$image" -resize 50% "$image"
    echo "Resized: $image"
  else
    echo "No image files found in the specified folder."
    break
  fi
done

echo "All images resized to 50%! 🎉"
