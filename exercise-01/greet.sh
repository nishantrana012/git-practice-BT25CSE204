#!/usr/bin/env bash
# Prints a greeting for the name stored in the input file.
# Usage: bash greet.sh [input-file]      (default: input.txt)
file="${1:-input.txt}"

if [[ ! -f "$file" ]]; then
  echo "Error: input file '$file' not found" >&2
  exit 1
fi

read -r name < "$file" || true
name=${name%$'\r'}                       # tolerate Windows line endings

if [[ -z "${name// /}" ]]; then
  echo "Error: name is empty" >&2
  exit 1
fi
if [[ ! $name =~ ^[A-Za-z[:space:]]+$ ]]; then
  echo "Error: name may only contain letters and spaces" >&2
  exit 1
fi

echo "Hello, $name! Welcome to Git practice."
