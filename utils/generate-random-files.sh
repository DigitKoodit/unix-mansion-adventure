#!/bin/bash

FOLDER=$1
FILE_NAME_LENGTH=$2
FILE_COUNT=$3

if [[ ! -d $1 ]]; then
  echo "Folder doesn't exist"
  exit 1
fi

cd $FOLDER

for (( i=0;i<=$FILE_COUNT;i++ )); do 
  RND=$(LC_ALL=C tr -dc 'A-Za-z0-9' < /dev/urandom | head -c $FILE_NAME_LENGTH)
  echo "$RND" > $RND
done