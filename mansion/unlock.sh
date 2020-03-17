#!/bin/bash

ANSWER="$(echo $1 | cksum)"
CORRECT_ANSWER="3154648399 4"

if [[ $ANSWER = $CORRECT_ANSWER ]]; then
  echo "Correct answer! 
You unlocked the next door."
else
  echo "Answer is not correct. Please try again."
fi
