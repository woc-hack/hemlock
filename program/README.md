# Overview

find_cloned_files is a script that looks for copied files in OSS repositories that may contain known security vulnerablities which have been fixed in other proejcts.

The script must run on da4.

usage: ./find_cloned_files <out|-> <commit hash>  
out is the output directory. if specified as -, directory is sha hash of commit  
commit hash is the commit that fixes a known vulnerability  


Example:
./find_cloned_files - 92fe84214967012e951f7aee5bcee9977c426eef 

# Description

Given a commit that fixes a vulnerability, it finds projects that are:
1. Known to contain vulnerable code. These projects contain the vulnerable code in the most current revision of the project.
2. Known to have fixed the vulnerable code. These projects had the vulnerable code, but it has been replace with a known fixed version.
3. Unknown if it is still vulnerable. These projects had the vulnerable code, the code has been modified, but we don't know if the modification fixes the vulnerability.

Here's the basic algorithm:

- take as input the sha1 hash for a commit that fixes a vulnerability
- use c2b to find the blobs in the fixing commit
- use b2ob recursively to find all old blobs, which presumably contain the vulnerability
- use ob2b recursively to find all the new blobs, which presumably are not vulnerable
- For each vulnerable old blob
  + use b2c to find all commits of that blob
  + for each commit
    - use c2h to get the head commit
    - see if the vulnerable blob is in the head commit
      = if so, the project contains the vulnerable code
      = if not
        . see if one of the new (fixed) blobs is in the head commit
          _ if so, the project does not contain the vulnerable code
          _ if not, we don't know if the project contains the vulnerable code


