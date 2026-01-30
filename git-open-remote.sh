#!/usr/bin/env bash

raw_url=$(git remote get-url origin)
if [[ $raw_url =~ "https:" ]]; then
  url=$raw_url
elif [[ $raw_url =~ "git@" ]]; then
  url=$(echo $raw_url | sed -E "s|:|/|" | sed -E "s|git@|https://www.|")
fi

if [[ ! -z $url ]]; then
  open $url
else
  echo "$raw_url, conversion not supported"
fi
