#! /usr/bin/python

# Right now, the input is hard coded to come from a file named test.

# Get some information about a commmit such as the commit log message,
# the files and blobs affected, and the old blobs.

import sys
import os
import glob
import re
import subprocess

#
# Get the log message for the given commit
#
def commit2logmsg(commit):
    cmd = 'echo ' + commit + '| ~/lookup/showCnt commit 2 | cut -d ";" -f 4'
    p = subprocess.Popen(cmd, shell=True, stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
    line = p.stdout.read()
    retval = p.wait()
    return line.rstrip()

#
# WoC Mappings
# supported map_types: c2P, b2ob, c2f, c2b
# other mappings should work but have not been tested
#
def map(map_type, sha1):
    cmd = 'echo ' + sha1 + ' | ~/lookup/getValues -f ' + map_type + ' 2>/dev/null' + ' | cut -d\; -f2'
    p = subprocess.Popen(cmd, shell=True, stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
    lines = p.stdout.read()
    retval = p.wait()
    return lines.rstrip()

#
# Main
#
for file in ['test']:
    count = 0
    try:
        fp = open(file, 'r')
    except Exception, e:
        print ("Could not open file:", file)
        print (e.args[1])
        sys.exit()

    for line in fp:
        count += 1
        # skip blank lines
        if (len(line) != 41):
            sys.stderr.write('skipping line ' + str(count) + ' of length ' + str(len(line)) + ': ' + line)
            continue
        commit = line.rsplit()[0]
        logmsg = commit2logmsg(commit)
        #match = re.match('.*[Cc][Vv][Ee]', logmsg)
        match = 1
        if (match): 
            print ('Commit With Fix: ')
            print ('    ' + commit)

            commit_files = map('c2f', commit)
            print ('File(s) In Commit: ')
            print ('    ' + commit_files.replace('\n', '\n    '))

            commit_blobs = map('c2b', commit)
            print ('Blob(s) In Commit: ')
            print ('    ' + commit_blobs.replace('\n', '\n    '))

            print ('Blob(s) Before Fix: ')
            for blob in commit_blobs.split('\n'):
                old_blob = map('b2ob', blob)
                print ('    ' + blob)

            projects = map('c2P', commit)
            print ('Projects:')
            print ('    ' + projects.replace('\n', '\n    '))

            print ('Commit Message for ' + commit + ':\n' + logmsg)
            print
            print ("======================================================================")

fp.close()
