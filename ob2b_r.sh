#! /bin/bash

#
# Given a blob, recursively find new blobs in WoC using ob2b mapping
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
# ob2b (old blob to blob) mapping.
# input: one or more blobs separated by a newline
#
function ob2b {
    local blobs="$1"
    old_blobs=`printf "$blobs\n" | ~/lookup/getValues -f ob2b 2> /dev/null | cut -d\; -f2 | sort | uniq`
    printf "$old_blobs"
}

#
# ob2b_r
# call ob2b recursively to the end
#
function ob2b_r {
    local blob="$1"
    list+=" $blob"
    obs=$(ob2b "$blob")
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
        ob2b_r "$unique_blobs"
    fi
}


#
# Main body of script
#

# Check Command line args
if [[ $# -ne 1 ]]; then
    echo "usage: ob2b_r.sh <pathname | sha hash for blob>"
    exit 1
fi

# compute hash for the blob
blobhash=$(get_blob_hash $1)
if [ $? -ne 0 ]; then
    # print error message and exit
    echo Error: could not get hash for $blobhash >&2
    exit
fi

# call ob2b to find new blobs
obs=$(ob2b "$blobhash")
if [ "$obs" = "" ]; then
    exit
fi
ob2b_r "$obs\n"
num_blobs=`printf "$all_blobs" | wc -l`
#echo number of old blobs = $num_blobs >&2
