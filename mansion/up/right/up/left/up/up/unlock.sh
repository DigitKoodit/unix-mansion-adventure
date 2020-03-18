#!/bin/bash

if [[ ! -d cell-left-front ]]; then
  echo "Oh no cells got destroyed!
If this happens run \"git checkout .\" to start over."
  exit 1
fi

S1="$(ls villager* | wc -l)"
S2="$(ls cell*/villain* | wc -l)"

if [[ $S2 > 0 ]]; then
  echo "Quicky beat villains before they attack!"
  exit 0
fi

if [[ $S1 < 10 ]]; then
  echo "Not all villagers are safe yet! Please hurry!"
  exit 0
fi

if [[ $S1 = 10 ]]; then
  echo "YOU DID IT! You freed the villagers!

Congratulations! 

You have solved the first mystery of the Unix Mansion and hopefully learned some handy commands along the way. 

Thank you for your bravery noble hero!

The end.
"
else
  echo " Please try again."
fi

