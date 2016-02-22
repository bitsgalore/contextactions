#!/bin/sh

# Convert MediaWiki file to Markdown using pandoc

fileIn=$1
fileOut=$fileIn.md

pandoc -s -S --ascii -f mediawiki -t markdown "$fileIn" -o "$fileOut"
