
#!/usr/bin/env bash

# Given a repository, extracts the last SHA for all months, in the format:
#    repository yyyy-mm sha
#
# Uasge
#    lastMonthlyCommit.sh
#
# Input
#   $1 - tagname
#
# Output
#   bash status: 0=OK, other=failed
#

repositories='./repositories.txt'
regex="(git@github.com:)(.*)(/)(.*)(\.)"

# Based on https://www.linuxjournal.com/content/bash-regular-expressions
while read repositoryUrl
do
   # echo $repositoryUrl
   if [[ $repositoryUrl =~ $regex ]]; then
      # echo "$repositoryUrl matches"
      organization="${BASH_REMATCH[2]}"
      repository="${BASH_REMATCH[4]}"
      echo $organization $repository
      # echo Repostitory: $repository
   fi
done < $repositories
