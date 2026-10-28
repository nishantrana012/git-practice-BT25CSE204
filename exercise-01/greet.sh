#!/usr/bin/env bash
# Prints a greeting for the name stored in the input file.
read -r name < "${1:-input.txt}"
echo "Hello, $name! Welcome to Git practice."
