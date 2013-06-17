#!/bin/bash
# Usage: attempt to make a plaintext conversion copy of all PDFs in all subfolders (maxdepth 1 folder down) of the working directory

# Turning on the nullglob shell option
shopt -s nullglob

# Make list of all subfolders in working directory, save as pwd.txt
find * -maxdepth 0 -type d -exec bash -c "cd \"{}\"; pwd" \;  > pwd.txt

# Loop through pwd cd'ing into each directory then pdftotext all PDFs within each subdirectory
for i in $(cat pwd.txt); do
  cd $i 
  for f in *.jpg
  do
	echo "resizing $f"
        convert "$f" -resize 25% small"$f" 
	done
done
