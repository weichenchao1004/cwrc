
#!/usr/bin/env bash

# Given a repository, extracts the last SHA for all months, in the format:
# repository yyyy-mm sha
#
# Uasge
#    lastMonthlyCommit.sh
#
# Input
#   NONE
#
# Output
#   repository yyyy-mm sha
#
GIT_COMMIT_LOG="../gitCommit.log"
git log --pretty=format:'%H %cI' > $GIT_COMMIT_LOG

# handle line breaks properly; needed when a line has spaces or tabs
IFS=$'\n'

controlString=""
testString=""
finalString=""

while read gitLogLine
do
   # echo ${gitLogLine:41:7}
   testString="$(echo ${gitLogLine:41:7})"
   # echo $testString
   if [ "$testString" != "$controlString" ]
   then
      echo $gitLogLine
      controlString=$testString
   fi
done < $GIT_COMMIT_LOG
