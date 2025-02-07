#!/usr/bin/bash

git_search='git ls-files \
 --modified \
 --deleted \
 --other \
 --exclude-standard \
 --deduplicate \
 $(git rev-parse --show-toplevel)' \
&& eval "$git_search | fzf -m --ansi --preview 'git diff --color=always -- {+}' \
  --no-sort \
  --prompt='Add >' \
  --bind='enter:execute(git add {+})' \
  --bind='enter:+reload($git_search)'"
