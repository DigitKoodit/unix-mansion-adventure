#!/bin/bash

ROOM_PATH=$1

if [[ -e "$1/room.txt" ]]; then
  echo "Room already exists"
  exit 0
fi

cd $ROOM_PATH
echo "Building a dead-end"
echo 'Dead-end. Nothing to see here. Return to the last room.' > room.txt
