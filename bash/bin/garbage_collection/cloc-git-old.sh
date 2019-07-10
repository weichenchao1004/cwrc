#!/usr/bin/env bash

## A script to delete a local and remote git tag on the current repository
#
# Uasge
#    gitTagDelete -<tag name>
#
# Input
#   $1 - organization
#   $2 - repo
#   2$ - SHA
#
# Output
#   bash status: 0=OK, other=failed
#
ORAGANIZATION=$1
REPOSITORY=$2

URL='git@github.com:'$1'/'$REPOSITORY'.git'
echo Conting LOC for: $URL

TEMP_REPO='temp-linecount-repo'
CLOC_OUTPUT='clocOutput.log'

rm -rf $REPO || true

git clone $URL $TEMP_REPO &&
  cd $TEMP_REPO
  rm -f  '../'$CLOC_OUTPUT || true
  cloc "$3"  > '../'$CLOC_OUTPUT &&
  cd .. &&
  rm -rf $TEMP_REPO
~/rmsrc/bash/bin/findSum.sh $REPOSITORY
