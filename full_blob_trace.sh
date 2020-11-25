#! /bin/bash

#
# Call b2ob_r and ob2b_r to get a full trace of all old blobs and
# new blobs from the blob given on the command line.
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
# Main body of script
#

# Check Command line args
if [[ $# -ne 1 ]]; then
    echo "usage: full_blob_trace.sh <pathname | sha hash for blob>"
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
echo CURRENT:
echo "$blobhash"
echo OLD:
./b2ob_r.sh "$blobhash"
echo NEW:
./ob2b_r.sh "$blobhash"
