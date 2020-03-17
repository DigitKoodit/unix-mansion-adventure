#!/bin/bash

S1='torch'
C=0
if [ -f $S1 ]; then
  C=$(($C + 1))
fi

if [ $C = 1 ]; then
  echo "Correct answer! You have lit your way.
You unlocked the next door."
else
  echo "Answer is not correct. Please try again."
fi

