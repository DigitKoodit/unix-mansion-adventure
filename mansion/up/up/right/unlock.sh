#!/bin/bash

S1='nurmi/paavo'
S2='michelangelo/david'
S3='galaxy/venus'

C=0
if [ -f $S1 ]; then
  C=$(($C + 1))
fi
if [ -f $S2 ]; then
  C=$(($C + 1))
fi
if [ -f $S3 ]; then
  C=$(($C + 1))
fi 

if [ $C = 2 ]; then
  echo "Almost there. You can do it!"
elif [ $C = 3 ]; then
  echo "Correct answer! 
You unlocked the next door."
else
  echo "Answer is not correct. Please try again."
fi

