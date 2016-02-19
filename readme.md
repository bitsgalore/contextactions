## Contents of this repo

This repo contains a collection of small utility scripts that define context menu items in Caja. This is the default file manager of the [MATE](http://mate-desktop.com/) desktop, which is one of the desktop environments that are available for Linux Mint and Ubuntu.. 

## Installation

Store the scripts in `~/.config/caja/scripts` or its subdirectories and make them executable. You can do this recursively for all files with the command:

    find ~/.config/caja/scripts/ -type f -exec chmod a+x {} \;

Note: doesn't seem to work!!

<http://www.ethanjoachimeldridge.info/tech-blog/caja-exifstrip-context-action>

## Using the scripts

In Caja, right-click on a file. Then select the *Scripts* item in the context menu, and navigate to the one you want to use. For the *info* scripts, the default text editor is used to display the tool output.
  