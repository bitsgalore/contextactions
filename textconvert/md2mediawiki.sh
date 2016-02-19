#!/bin/sh

# Convert Markdown file to MediaWiki using pandoc

fileIn=$1
fileOut=$fileIn.wiki

pandoc -s -S --ascii -t mediawiki "$fileIn" -o "$fileOut"
