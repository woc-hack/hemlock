#! /bin/bash

#
# Given a blob, recursively find old blobs in WoC using b2ob mapping
#

#
# Functions
#

#
# get_blob_hash: Get the sha1 hash for the file contents.
# If a sha1 hash is passed in, just return it.
#
function get_blob_hash {
    local blob=$1
    if [ `echo $blob | wc -c` -ne 41 ]; then
        if [ ! -f $1 ]; then
            echo file not found: $1
            exit 1
        fi
        blob=`git hash-object $1`
    fi
    if [ `echo $blob | wc -c` -ne 41 ]; then
        echo "$blob is not a valid sha1sum"
        exit 1
    fi
    echo "$blob"
}

#
# b2ob (blob to old blob) mapping.
# input: one or more blobs separated by a newline
#
function b2ob {
    local blobs="$1"
    old_blobs=`printf "$blobs\n" | ~/lookup/getValues -f b2ob 2> /dev/null | cut -d\; -f2 | sort | uniq`
    printf "$old_blobs"
}

#
# b2ob_r
# call b2ob recursively back to the root
#
function b2ob_r {
    local blob="$1"
    list+=" $blob"
    obs=$(b2ob "$blob")
    printf "$blob"
    all_blobs+="$blob"
    unique_blobs=''
    for ob in $obs; do
        # check for duplicates, skip if we have already seen this blob
        in=`echo $list | grep $ob`
        if [ "$in" = "" ]; then
            unique_blobs+="$ob"
            unique_blobs+="\n"
        fi
    done
    if [ "$unique_blobs" != "" ]; then
        b2ob_r "$unique_blobs"
    fi
}


#
# Main body of script
#

# Check Command line args
if [[ $# -ne 1 ]]; then
    echo "usage: b2ob_r.sh <pathname | sha hash for blob>"
    exit 1
fi

# compute hash for the blob
blobhash=$(get_blob_hash $1)
if [ $? -ne 0 ]; then
    # print error message and exit
    echo Error: could not get hash for $blobhash >&2
    exit
fi

# call b2ob to find old blobs
b2ob_r "$blobhash\n"
num_blobs=`printf "$all_blobs" | wc -l`
#echo number of old blobs = $num_blobs >&2
