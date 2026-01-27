#!/usr/bin/env bash

url=$(git remote get-url origin | sed -E "s|:|/|" | sed -E "s|git@|https://www.|")

open $url
