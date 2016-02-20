#!/bin/sh

# Analyze file with pdfinfo, display result with
# default text editor

# I/O stuff
fileIn=$1
fileOut=/tmp/"$fileIn".xml

# Viewer - default text editor (should work across most Linux flavors)
viewer=xdg-open

# Run pdinfo
pdfinfo -meta "$fileIn" > "$fileOut"

# Display result
$viewer "$fileOut"

# Wait 0.5 s & delete fileOut 
sleep .5
rm $fileOut

 

