#!/usr/bin/env bash

regex='- \[deleted\].*-> origin\/(.+)';

git fetch -p 2>&1 | \
while IFS= read -r line; do
  echo "$line"
  if [[ $line =~ $regex ]]; then
    branch="${BASH_REMATCH[1]}"
    if git show-ref --quiet --branches $branch; then
      git branch -D "$branch"
    fi
  fi
done
