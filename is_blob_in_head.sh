#! /bin/bash

# See if a blob is in the head commit

# Check the command line args
if [ $# -ne 2 ]; then
   echo "usage: is_blob_in_head.sh <blob hash> <commit hash>"
   exit 1
fi

blob=$1
commit=$2

# given a commit, find the head commit
function c2h {
    local current_commit=$1
    head=`echo $current_commit | ~/lookup/getValues -f c2h | cut -s -d ";" -f 2`
    echo "$head"
}

head_commit=$(c2h $commit)
for head in $head_commit; do
    echo $head_commit

result=`echo $commit | ~/lookup/showCmtTree.perl | grep $blob`
if [ "$result" = "" ]; then
    echo NO
else
    echo "$result"
fi
done

head_commit=$(c2h $commit)
for head in $head_commit; do
    # get the head commit
    echo head_commit = $head_commit

    # see if the blob is in the head commit
    result=`echo $head | ~/lookup/showCmtTree.perl | grep $blob`
    echo -n "Blob in head commit: "
    if [ "$result" = "" ]; then
        echo NO
    else
        echo YES
    fi
done

