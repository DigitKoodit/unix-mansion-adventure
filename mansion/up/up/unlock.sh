#!/bin/bash

ANSWER="$(echo $1 | md5sum)"
CORRECT_ANSWER="0f735248c5908b1ea41a5d22e125beba  -"

if [[ $ANSWER = $CORRECT_ANSWER ]]; then
  echo "Correct answer! 
You unlocked the next door."
  sudo chgrp hero *
else
  echo "Answer is not correct. Please try again.
Does your answer start with \"cd ./maze/...\" and ends with trailing slash \"/\"?"
fi

