#!/bin/bash
# This script will download YouTube videos using youtube-dl
# Usage: ./youtube.sh <url>

# Check if the user has provided a valid argument
if [ $# -eq 0 ] || ! [[ $1 =~ ^https?:// ]]; then
    echo "Please enter a valid URL"
    exit 1
fi

# Set the format and output filename
format="best"
output="~/Videos/Youtube/%(title)s-%(id)s.%(ext)s"

# Download the video or playlist using youtube-dl
youtube-dl -f $format -o $output $1
