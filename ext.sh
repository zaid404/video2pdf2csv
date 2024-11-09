#!/bin/bash

# Default values for start time, end time, interval, and input file
START_TIME="00:00:00"
END_TIME="00:00:20"
INTERVAL=5
INPUT_FILE="input_video.webm"
BASE_NAME=$(basename "$INPUT_FILE" | sed 's/\.[^.]*$//')
OUTPUT_PATTERN="${BASE_NAME}_%03d.jpg"

# Function to display usage instructions
usage() {
    echo "Usage: $0 -iv [INPUT_FILE] -s [START_TIME] -e [END_TIME] -in [INTERVAL]"
    exit 1
}

# Parsing command-line arguments
while [[ $# -gt 0 ]]; do
    case "$1" in
        -iv)
            INPUT_FILE="$2"
            shift 2
            ;;
        -s)
            START_TIME="$2"
            shift 2
            ;;
        -e)
            END_TIME="$2"
            shift 2
            ;;
        -in)
            INTERVAL="$2"
            shift 2
            ;;
        *)
            usage
            ;;
    esac
done

# Ensure input file exists
if [[ ! -f "$INPUT_FILE" ]]; then
    echo "Error: File '$INPUT_FILE' not found!"
    exit 1
fi

# Run ffmpeg with the provided parameters, capturing frames at the interval (every 5 seconds)
ffmpeg -i "$INPUT_FILE" -vf "fps=1/$INTERVAL" -vsync vfr -ss "$START_TIME" -to "$END_TIME" "$OUTPUT_PATTERN"
