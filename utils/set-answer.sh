#!/bin/bash

UNLOCK_FILE_PATH=$1
CORRECT_ANSWER="$(echo $2 | md5sum)"

if [[ -e $1 ]]; then
  sed -i "/CORRECT_ANSWER=/c\CORRECT_ANSWER=\"$CORRECT_ANSWER\"" $UNLOCK_FILE_PATH 
else 
  echo "Unlock file $UNLOCK_FILE_PATH does not exist"
fi

