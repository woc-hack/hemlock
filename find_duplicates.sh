#! /bin/bash

#
# Look for duplicate code in WoC
#
# Take a filename or git object hash of a file and find any duplicate files
# of that file and then find the project it belongs to.
#

#
# Functions
#

# Get the sha1 hash for the file (if the sha1 hash is passed in instead of
# a filename, just return that hash).
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

# blob to commit: Get the sha1 hashes for the commits
function b2c {
    local blob=$1
    commits=`echo $blob | ~/lookup/getValues -f b2c | cut -s -d ";" -f 2`
    echo "$commits"
}

# commit to projects
function c2p {
    local commit=$1
    local projects=`echo "$commit" | ~/lookup/getValues -f c2p`
    echo "$projects"
}

# commit to (deforked) project
function c2P {
    local commit=$1
    local projects=`echo "$commit" | ~/lookup/getValues -f c2P`
    echo "$projects"
}

# given a commit, find the head commit
function c2h {
    local current_commit=$1
    head=`echo $current_commit | ~/lookup/getValues -f c2h | cut -s -d ";" -f 2`
    echo "$head"
}


# print information about a blob
function print_info {
    local filename=$1
    local blob=$2

    echo filename: $filename
    echo sha1 hash: $blob

    # get commits for this blob
    #echo "----b2c: commits for blob $blobhash"
    commits=$(b2c $blobhash)
    if [[ "$commits" == "" ]]; then
        echo "blob not found: $blobhash"
        exit
    fi
    #echo "$commits" | cat -n | sed -e "s/^ */  /"
    commit_count=`echo "$commits" | wc -l`
    echo total_commits = $commit_count
    echo " "

    # get projects for these commits and heads for each commit
    count=0
    # walk through each commit (line) in the list of commits
    for commit in $commits; do
        # assign a number (count) to this record
        count=$((count+1))
        echo "$count."

        # write the commit hash
        echo "commit = $commit"

        # get the head commit
        head_commit=$(c2h $commit)
        for head in $head_commit; do
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

        # get pathnames
        pathnames=`ssh da4 "echo $commit | ~/lookup/showCmtTree.perl | grep $blobhash" | cut -d \; -f 3` 
        SAVEIFS=$IFS
        IFS=$'\n'
        for name in $pathnames; do
            echo pathname = $name
        done
        IFS=$SAVEIFS


        # get projects
        projects=$(c2P $commit)
        if [ -z "$projects" ]; then
            echo "No project found, c2P failed for commit $commit"
        else
            proj=`echo "$projects" | cut -d ";" -f 2`
            for p in $proj; do
                echo "project = $p"
                url=`toUrl $p`
                echo "proj_url = $url"

            done #for p in $proj
        fi
    done

    return 0
}

#
# Main body of script
#

# Check the command line args 
if [[ $# -ne 1 ]]; then
   echo "usage: find_reused_files <filename>" >&2
   exit 1
fi

# compute hash for the blob
blobhash=$(get_blob_hash $1)
if [ $? -ne 0 ]; then
    echo Error: could not get hash for $blobhash >&2
    exit
fi

# print information for one revision of one file
print_info $1 $blobhash

exit 0

