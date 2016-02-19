#!/bin/sh

# Analyze file with jpylyzer, display result with
# default text editor

# I/O stuff
fileIn=$1
fileOut=/tmp/"$fileIn".xml

# Viewer - default text editor (should work across most Linux flavors)
viewer=xdg-open

# Run Jpylyzer
jpylyzer "$fileIn" > "$fileOut"

# Display result
$viewer "$fileOut"

# Wait 0.5 s & delete fileOut 
sleep .5
rm $fileOut

# Alternative would be to use Zenity:
# jpylyzer "$fileIn" |zenity --text-info --title "Jpylyzer output $fileIn" --width=640 --height=480
 

