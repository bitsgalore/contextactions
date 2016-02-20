#!/bin/sh

# identify file type with Unix file tool, display result with
# default text editor

# I/O stuff
fileIn=$1
fileOut=/tmp/"$fileIn".txt

# Viewer - default text editor (should work across most Linux flavors)
viewer=xdg-open

# Run filel
file --mime-type "$fileIn" > "$fileOut"

# Display result
$viewer "$fileOut"

# Wait 0.5 s & delete fileOut 
sleep .5
rm $fileOut
 

