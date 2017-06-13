#!/bin/bash
# graciously ripped off from: https://stackoverflow.com/a/4754797

for branch in $(git branch --all | grep '^\s*remotes' | egrep --invert-match '(:?HEAD|master)$'); do
    git branch --track "${branch##*/}" "$branch"
done
