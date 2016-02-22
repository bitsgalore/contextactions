#!/bin/sh

# Convert Markdown file to docx using pandoc

fileIn=$1
fileOut=$fileIn.docx

pandoc -s -S --ascii -N --toc-depth=2 "$fileIn" -o "$fileOut"
