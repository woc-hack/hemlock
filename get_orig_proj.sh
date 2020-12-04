#! /bin/bash

# bash script to check for the most original project via github

# Check the command line args
if [[ $# -ne 1 ]]; then
   echo "usage: ./get_orig_prog.sh <git project name>" >&2
   echo example: ./get_orig_proj.sh aaudibert-test/alluxio
   exit 1
fi

first=$(curl -s https://github.com/$1 | grep "forked from" | cut -d '>' -f2 | cut -d '<' -f1)

next=$first

while [ ! -z "$next" ];do
    first=$next
    next=$(curl -s https://github.com/$next | grep "forked from" | cut -d '>' -f2 | cut -d '<' -f1)
done

echo "$first"
