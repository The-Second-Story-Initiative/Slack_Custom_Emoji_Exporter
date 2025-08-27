#!/bin/bash

mkdir -p downloaded_emojis

while IFS=" " read -r name url; do
  ext="${url##*.}"
  ext="${ext%%\?*}"  # clean any ?v=1 junk
  echo "Downloading $name.$ext..."
  curl -s -L "$url" -o "downloaded_emojis/$name.$ext"
done < emoji_urls.txt
