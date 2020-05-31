#!/usr/bin/env bash

ls -l ~ ~/i_dont_exist

#results in 
# ls: cannot access '/home/sa6o/i_dont_exist': No such file or directory
# /home/sa6o:
# total 1084
# drwxr-xr-x  4 sa6o me   4096 Nov 11 08:50  Backups
# -rw-r--r--  1 sa6o me     37 Nov 11 10:06  bash_profile
# ...

# Redirecting Stdoutput "1" to File and StdError "2" to "null"
ls -l ~ ~/i_still_dont_exist >myfiles.ls 2>/dev/null 

cat myfiles.ls 
# /home/sa6o:
# total 1084
# drwxr-xr-x  4 sa6o me   4096 Nov 11 08:50  Backups
# -rw-r--r--  1 sa6o me     37 Nov 11 10:06  bash_profile
# ...

# Redirecting both outputs
ls -l ~ ~/i_still_dont_exist >myfiles.ls 2>&1 
cat myfiles.ls
# results in 
# ls: cannot access '/home/sa6o/i_dont_exist': No such file or directory
# /home/sa6o:
# total 1084
# drwxr-xr-x  4 sa6o me   4096 Nov 11 08:50  Backups
# -rw-r--r--  1 sa6o me     37 Nov 11 10:06  bash_profile
# ...

# Here document
# cat <<.
# We choose . as the end delimiter.
# Hello world.
# Since I started learning bash, you suddenly seem so much bigger than you were before.
# .

cat <<< "Read this
String" 