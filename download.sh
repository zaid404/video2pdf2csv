#!/bin/bash

# Usage: ./download_youtube.sh <video_url>
# Example: ./download_youtube.sh https://www.youtube.com/watch?v=pn7gC0wzsqU

# Check if a URL is provided
if [ -z "$1" ]; then
    echo "Please provide a YouTube video URL."
    echo "Usage: ./download_youtube.sh <video_url>"
    exit 1
fi

# Define the video URL
VIDEO_URL="$1"

# Use yt-dlp with OAuth authentication
yt-dlp --username "oauth" --password "" "$VIDEO_URL"
