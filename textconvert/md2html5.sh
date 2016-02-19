#!/bin/sh

# Convert Markdown file to html5 using pandoc

fileIn=$1
fileOut=$fileIn.html

pandoc -s -S --ascii -t html5 "$fileIn" -o "$fileOut"
