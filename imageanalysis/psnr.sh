#!/bin/sh

# Compare 2 images and return result as PSNR

# I/O stuff
fileIn1=$1
fileIn2=$2
fileOut=/tmp/tmpresult.txt

# Viewer - default text editor (should work across most Linux flavors)
viewer=xdg-open

# Run compare
compare -metric PSNR "$fileIn1" "$fileIn2" null: 2> "$fileOut"

# Display result
$viewer "$fileOut"

# Wait 0.5 s & delete fileOut 
sleep 0.5
rm $fileOut

 

