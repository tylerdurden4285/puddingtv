#!/bin/bash

TOUCHSCREEN_NAME="NTRG0001:01 1B96:1B05"
# VIDEO_FILE="$1"

# Disable touchscreen
xinput disable "$TOUCHSCREEN_NAME"

# Start mpv
# mpv "$VIDEO_FILE" 

mpv --fullscreen cat-video-playlist/*.mp4

# Re-enable touchscreen after MPV exits
xinput enable "$TOUCHSCREEN_NAME"

