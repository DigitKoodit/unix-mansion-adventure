#!/bin/bash

ANSWER="$(echo $1 | cksum)"
CORRECT_ANSWER=

if [[ $ANSWER = $CORRECT_ANSWER ]]; then
  echo "YOU DID IT! You freed the villagers!

Congratulations! 

You have solved the first mystery of the Unix Mansion and hopefully learned some handy commands along the way. 

Thank you for your bravery noble hero!

The end.
"
else
  echo "Answer is not correct. Please try again."
fi

