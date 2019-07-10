#!/usr/bin/env bash

# A script to delete a local and remote git tag on the current repository
#
# Uasge
#   $1 Repo name
#
# Input
#   $1 - tagname
#
# Output
#   bash status: 0=OK, other=failed
#
REPO=$1
CLOC_OUTPUT='clocOutput.log'
testString=''
locDoc=''
locSrc=''

while read clocLogLine
do
   # echo $clocLogLine
   testString="$(echo ${clocLogLine:0:3})"
   # echo Test String: $testString
   if [ ! -z "$testString" -a "$testString" != " " ];
   then
      if [ $testString == 'SUM' ]
      then
         # echo "$clocLogLine"
         locDoc="$(echo ${clocLogLine:50:15})"
         locSrc="$(echo ${clocLogLine:65:15})"
         # echo repo:   $REPO
         # echo locDoc: $locDoc
         # echo locSrc: $locSrc
         echo $REPO $locDoc $locSrc
      fi
   fi
done < $CLOC_OUTPUT
