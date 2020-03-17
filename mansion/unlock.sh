#!/bin/bash

ANSWER="$(echo $1 | cksum)"
CORRECT_ANSWER="373133337e135ae357ada44c85799f82  -"

if [[ $ANSWER == $CORRECT_ANSWER ]]; then
  echo "Correct answer! 
You unlocked the next door."

  echo "HINT! Move forward using: cd up"
else
  echo "Answer is not correct. Please try again."
fi
