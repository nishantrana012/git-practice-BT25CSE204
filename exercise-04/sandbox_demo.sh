#!/usr/bin/env bash
# Demonstrates stash, revert, restore and tag in a temporary repository.
# Usage: bash sandbox_demo.sh        (no input needed)
set -euo pipefail
dir=$(mktemp -d)
trap 'rm -rf "$dir"' EXIT
cd "$dir"

git init -q -b main
git config user.name  "Demo User"
git config user.email "demo@example.com"

echo "line 1" > notes.txt
git add notes.txt
git commit -q -m "Add notes"

echo "--- git stash: park uncommitted work"
echo "line 2" >> notes.txt
git stash
echo "working tree after stash:"; git status --short; echo "(clean)"
git stash pop > /dev/null
echo "after stash pop:"; cat notes.txt
git commit -q -am "Add line 2"

echo "--- git revert: undo a bad commit safely"
echo "bad line" >> notes.txt
git commit -q -am "Add bad line"
git revert --no-edit HEAD > /dev/null
git log --oneline

echo "--- git restore: discard an unwanted edit"
echo "oops" > notes.txt
git restore notes.txt
echo "notes.txt after restore:"; cat notes.txt

echo "--- git tag: mark a release"
git tag -a v1.0 -m "First release"
git tag
