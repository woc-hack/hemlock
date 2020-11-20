#! /usr/bin/python -u

#
# Search WoC for commit log messages containing the string CVE to find 
# possible fixed vulnerabilities.
#

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
    line = p.stdout.readlines()
    retval = p.wait()
    return line[0]

#
# Main
#
dir = '/data/All.blobs/'
if not os.path.isdir(dir):
    print("File path '" + dir + "' does not exist. Must run on da4.")
    sys.exit()

files = glob.glob(dir + '/commit_*.idx')

for file in files:
    count = 0
    sys.stderr.write(file + "\n")
    try:
        fp = open(file, 'r')
    except Exception, e:
        print ("Could not open file:", file)
        print (e.args[1])
        sys.exit()

    for line in fp:
        count += 1
        commit = line.rsplit(';', 1)[1].rsplit()[0]
        logmsg = commit2logmsg(commit)
        match = re.match('.*[Cc][Vv][Ee]', logmsg)
        if (match): 
            print (commit + ";" + logmsg.rsplit('\n')[0])

fp.close()
