#!/bin/bash

S1="$(ls peg* | wc -l)"

if [ $S1 = 0 ]; then
  echo "You have lost all your pegs. The original peg mysteriously manifested back to the hole"
  echo "peg made of clay" > peg
  exit 0
fi

if [[ $S1 > 5 ]]; then
  echo "You have created too many pegs. Use powerful spell \"rm peg*\" to get rid of them all and then run \"./unlock.sh\" again to start over"
  exit 0
fi

if [ $S1 = 5 ]; then
  echo "Correct answer! 
The ground starts to shake as the door slowly slides into the wall.
You unlocked the next door."
else
  echo "Answer is not correct. Please try again."
fi

