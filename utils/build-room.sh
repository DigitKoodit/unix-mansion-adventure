#!/bin/bash

ROOM_PATH=$1
ROOM=$2


if [[ -e "$1/task.txt" ]]; then
  echo "Room already exists"
  exit 0
fi

cd $ROOM_PATH
echo "Building room"
mkdir up left right

echo "$ROOM" > room.txt

cat <<EOF > task.txt
Objectives
- 

Task
-

Question
- 

Hints and tips
-

EOF

cat <<EOF > unlock.sh
#!/bin/bash

ANSWER="$(echo $1 | md5sum)"
CORRECT_ANSWER=

if [[ $ANSWER = $CORRECT_ANSWER ]]; then
  echo "Correct answer! 
You unlocked the next door."
  sudo chgrp hero *
else
  echo "Answer is not correct. Please try again."
fi

EOF

# Make unlock.sh executable
chmod +x unlock.sh
