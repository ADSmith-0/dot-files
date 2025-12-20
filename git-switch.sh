#!/usr/bin/env bash

if [[ $# -eq 1 ]]; then
    selected=$1
else
    selected=$(git branch --list | fzf | xargs)
fi

if [[ $selected == "-" ]]; then
  git switch -
  exit 0
fi

if git show-ref --quiet --branches $selected; then
  git switch "$selected"
else
  git switch -c "$selected"
fi

