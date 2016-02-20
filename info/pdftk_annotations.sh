#!/bin/sh

# Extract annotations from pdf with pdftk, display result with
# default text editor

# I/O stuff
fileIn=$1
fileOut=/tmp/"$(cat /dev/urandom | tr -cd a-f0-9 | head -c 16)".txt

# Viewer - default text editor (should work across most Linux flavors)
viewer=xdg-open

# Run pdftk
pdftk "$fileIn" dump_data_annots > "$fileOut"

# Display result
$viewer "$fileOut"

# Wait 3 s & delete fileOut 
sleep 0.5
rm $fileOut

 

