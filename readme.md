## Contents of this repo

This repo contains a collection of small utility scripts that define context menu actions in Caja. This is the default file manager of the [MATE](http://mate-desktop.com/) desktop, which is one of the desktop environments that are available for Linux Mint and Ubuntu. Scripts are organised into the following categories:

* **info**: display technical information about a file. Currently included:
    * Unix File - display mime type
    * ExifTool - display metadata on lots of (mostly graphics) formats
    * MediaInfo - display metadata on lots of video and audio formats
    * Jpylyzer - validate JPEG 2000 Part 1 + display metadata
    * Epubcheck - validate Epub + display metadata
    * pdfinfo - display metadata on PDF
    * pdftk - PDF (display general metadata, annotations)
    * qpdf - PDF check on file structure + encryption, linearization
    * gdalinfo - display metadata on varous geospatial formats

* **textconvert**: several conversions from / to Markdown, all using Pandoc.

## Installation

Copy the scripts to `~/.config/caja/scripts` or one of its subdirectories.

## Using the scripts

In Caja, right-click on a file. Then select the *Scripts* item in the context menu, and navigate to the one you want to use. For example, to run ExifTool on an image file do this:

![](./caja-context-example1.png)

The results are displayed in the default text editor:

![](./exif-output.png)

## Adding new scripts

The easiest way is to copy one of the existing scripts and modify it to your needs. Note that scripts must be executable to work. You can do this with `chmod`, e.g.:

    chmod a+x newscript.sh

## More information

[Adding Right Click context actions to Caja](http://www.ethanjoachimeldridge.info/tech-blog/caja-exifstrip-context-action) (note: I couldn't make the example this post gives work; it seems that the `$CAJA_SCRIPT_SELECTED_FILE_PATHS` isn't recognised).

## Context menu actions for other desktops

* Ubuntu with Nautilus file manager - Nautilus Actions:
<http://www.pcsteps.com/4434-add-right-click-commands-linux-mint-ubuntu/>

* Linux Mint Cinnamon with Nemo file manager:
<http://www.pcsteps.com/4434-add-right-click-commands-linux-mint-ubuntu/>
  