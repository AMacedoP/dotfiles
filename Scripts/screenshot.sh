#!/bin/bash
# Script to take a screenshot of whole monitor and copy it to clipboard

TMP=/tmp/screenshot.png

# Take screenshot with scrot
scrot $TMP -z

# Check if screenshot was taken
if ! [ -e $TMP ]
then
   notify-send "Screenshot not taken"
   exit 1
fi

# Copy it to clipboard via xclip
xclip -selection clipboard -t image/png -i $TMP
notify-send "Screenshot taken"
exit 0
