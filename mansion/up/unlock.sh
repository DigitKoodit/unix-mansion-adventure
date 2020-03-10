#!/bin/bash

ANSWER="$(echo $1 | md5sum)"
CORRECT_ANSWER="8e62287208ae5726053618be516419d0  -"

if [[ $ANSWER = $CORRECT_ANSWER ]]; then
  echo "Correct answer! 
You unlocked the next door."
  sudo chgrp hero *
else
  echo "Answer is not correct. Please try again."
fi
