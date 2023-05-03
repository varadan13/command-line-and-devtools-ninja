#!/bin/bash

git status -u --porcelain | while read line

do
  file_path=$(echo "$line" | awk '{print $2}')

  if [ -f "$file_path" ]; then
    sed -i  's/debugger;//g' "$file_path"
    echo "Removed debugger from $file_path"
  else
    echo "File not found: $file_path"
  fi
done
