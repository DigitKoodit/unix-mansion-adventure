#!/bin/bash

ANSWER="$(echo $1 | cksum)"
CORRECT_ANSWER="946544402 3"

if [[ $ANSWER = $CORRECT_ANSWER ]]; then
  echo "Correct answer! 
You unlocked the next door."
else
  echo "Answer is not correct. Please try again."
fi

