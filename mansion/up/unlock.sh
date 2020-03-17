#!/bin/bash

ANSWER="$(echo $1 | cksum)"
CORRECT_ANSWER="537250665 28"

if [[ $ANSWER = $CORRECT_ANSWER ]]; then
  echo "Correct answer! 
You unlocked the next door."
else
  echo "Answer is not correct. Please try again.
Does your answer start with \"cd maze/...\" and ends with trailing slash \"/\"?"
fi

