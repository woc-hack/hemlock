#! /bin/bash

#
# Given a blob, recursively find old blobs in WoC using b2ob mapping
#

#
# Functions
#

num_blobs=0

# blob: Get the sha1 hash for the file
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


# b2ob: get old blobs from blob
function b2ob {
    local blob=$1
    #blobs=`echo "$blob" | ~/lookup/getValues b2ob 2> /dev/null`
    blobs=`echo "$blob" | ~/lookup/getValues b2ob`
    # see if any old blobs were found
    if [[ "$blobs" =~ \; ]] ; then
        blobs=`echo $blobs | sed -e "s/^[^;]*;//" -e "s/;/\n/g"`
        echo "$blobs"
    else
        echo ""
    fi
}

# b2ob_r
function b2ob_r {
    local blob=$1
    list+=" $blob"
    obs=$(b2ob $blob)
    echo "$blob"
    num_blobs=$((num_blobs + 1))
    for ob in $obs; do
        # check for duplicates, skip if we have already seen this blob
        in=`echo $list | grep $ob`
        if [ "$in" = "" ]; then
            b2ob_r $ob
        fi
    done
}


#
# Main body of script
#

# Check Command line args
if [[ $# -ne 1 ]]; then
    echo "usage: b2ob.sh <pathname | sha hash for blob>"
    exit 1
fi

# compute hash for the blob
blobhash=$(get_blob_hash $1)
if [ $? -ne 0 ]; then
    # print error message and exit
    echo Error: could not get hash for $blobhash >&2
    exit
fi

#
# b2ob
#
echo "b2ob (recursively call b2ob skipping duplicates):" >&2
b2ob_r $blobhash
echo "" >&2
echo number of old blobs = $num_blobs >&2
