#!/usr/bin/env bash

no_pr=$(gh pr view | tr -cd "[:print:]\n")

if [[ -z $no_pr ]]; then
  url=$(git remote get-url origin | sed -E "s|:|/|" | sed -E "s|git@|https://www.|" | sed -E "s|\.git$||")
  branch=$(git rev-parse --abbrev-ref HEAD)
  xdg-open "$url/compare/$branch?expanded=1"
else
  gh pr view --web
fi
