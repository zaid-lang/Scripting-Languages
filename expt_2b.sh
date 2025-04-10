#!/bin/bash
# Usage: ./list_files.sh directory_name
if [ -z "$1" ]; then
    echo "Usage: $0 directory_name"
    exit 1
fi

DIR="$1"

if [ -d "$DIR" ]; then
    echo "Listing files in directory: $DIR"
    ls -l "$DIR"
else
    echo "$DIR is not a valid directory."
fi
