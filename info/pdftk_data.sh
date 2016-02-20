#!/bin/sh

# Extract metadata from pdf with pdftk, display result with
# default text editor

# I/O stuff
fileIn=$1
fileOut=/tmp/"$fileIn".txt

# Viewer - default text editor (should work across most Linux flavors)
viewer=xdg-open

# Run pdftk
pdftk "$fileIn" dump_data > "$fileOut"

# Display result
$viewer "$fileOut"

# Wait 3 s & delete fileOut 
sleep 0.5
rm $fileOut

 

