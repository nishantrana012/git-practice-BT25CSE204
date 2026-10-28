#!/usr/bin/env bash
# Prints every key=value pair of a settings file.
# Usage: bash show_greeting.sh [settings-file]      (default: settings.conf)
conf="${1:-settings.conf}"
if [[ ! -f "$conf" ]]; then
  echo "Error: settings file '$conf' not found" >&2
  exit 1
fi
while IFS='=' read -r key value; do
  value=${value%$'\r'}
  [[ -z $key || $key == \#* ]] && continue
  echo "$key -> $value"
done < "$conf"
