#!/bin/bash

ANSWER="$(echo $1 | md5sum)"
CORRECT_ANSWER="373133337e135ae357ada44c85799f82  -"

if [[ $ANSWER == $CORRECT_ANSWER ]]; then
  echo "Correct answer! 
You unlocked the next door."
  sudo chgrp hero *
  chmod 775 up/treasure-chest
  echo "Move forward using: cd up"
else
  echo "Answer is not correct. Please try again."
fi