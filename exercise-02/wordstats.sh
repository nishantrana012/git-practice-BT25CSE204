#!/usr/bin/env bash
# Prints line, word and character counts of a text file.
# Usage: bash wordstats.sh [input-file]      (default: input.txt)
file="${1:-input.txt}"
if [[ ! -f "$file" ]]; then
  echo "Error: file '$file' not found" >&2
  exit 1
fi
echo "File:       $file"
echo "Lines:      $(wc -l < "$file")"
echo "Words:      $(wc -w < "$file")"
echo "Characters: $(wc -m < "$file")"
