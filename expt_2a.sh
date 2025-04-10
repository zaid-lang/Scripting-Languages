#!/bin/bash
# Usage: ./count_file.sh filename
if [ -z "$1" ]; then
    echo "Usage: $0 filename"
    exit 1
fi

FILE="$1"

# wc (word count) provides line, word, and byte counts.
lines=$(wc -l < "$FILE")
words=$(wc -w < "$FILE")

echo "File: $FILE"
echo "Number of lines: $lines"
echo "Number of words: $words"
