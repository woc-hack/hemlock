echo ${1} | ~/lookup/getValues -f c2b | cut -d\; -f 2 | ~/lookup/getValues -f b2ob | cut -d\; -f 2 > working
echo Assuming ${1} is a security fix, generating ancestors of all files the commit fixes
while [ -s working ]
do
    echo working `wc -l working`  bad `wc -l bad_blobs`
    #cat bad_blobs working | sort | uniq > bad_blobs
    cat working | ~/lookup/getValues b2ob | cut -d\; -f2 | sort | uniq > new_blobs
    comm -23 new_blobs bad_blobs > working.1
    cat new_blobs working bad_blobs | sort | uniq > bad_blobs.1
    rm bad_blobs
    mv bad_blobs.1 bad_blobs
    rm working
    mv working.1 working
done
echo Done: `wc -l bad_blobs` detected and written to bad_blobs
