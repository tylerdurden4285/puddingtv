#!/bin/bash

DOWNLOAD_DIR="cat-video-playlist"

# Check download directory exists, if not, create one
if [ ! -d "$DOWNLOAD_DIR" ]; then
 mkdir -p "$DOWNLOAD_DIR"
fi

# Ask for the URL
echo "Enter the URL of the YouTube video:"
read VIDEO_URL

# Use yt-dlp to download the video
yt-dlp -f 'bestvideo[height<=720][ext=mp4]+bestaudio[ext=m4a]/best[height<=720]' "$DOWNLOAD_DIR/%(title)s%(ext)s" "$VIDEO_URL"
