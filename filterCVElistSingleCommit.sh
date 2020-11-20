#! /bin/bash

# Figure out whether the commit refers to a single file
# Simple heuristic to determine if the file is vulnerable

while IFS= read -r  a; do
    cveName=$( echo "$a" | cut -d\; -f1 )
    commit=$( echo "$a" | cut -d\; -f2 )
    numBlobs=$( echo "$commit" | ~/lookup/getValues -f c2b | wc -l )

    if [[ "$numBlobs" == 1 ]]; then
        echo "$a"
    fi
done
