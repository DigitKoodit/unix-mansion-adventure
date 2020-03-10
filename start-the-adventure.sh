#!/bin/bash

VILLAIN_GROUP=villain

if grep -q $VILLAIN_GROUP /etc/group; then
  echo "Evil villains have already taken over the mansion.

The story continues...
"
  exit 0
fi

echo "Disclaimer: The Unix mansion project is built educational purposes and all code is open source. To get started this script will require sudo permissions but only for creating one user a group \"villain\".

Run ./cleanup.sh script at any time which will remove extra users and groups created during this adventure.

Cancel this tutorial at any time by pressing \"ctrl + c\"

> Continue by pressing enter
"

read ok
echo "Do you want an extra challenge? Create a villain group which locks directories and files inside \"./mansion\" for more engaging experience? 

> \"y\" for yes and \"n\" for no"

read approvement
if [[ $approvement == "y" ]]; then
  echo "Cool let's create a user group called \"villain\" and restrict mansion dir permissions. Password is required but it won't get stored anywhere."

  sudo groupadd $VILLAIN_GROUP
  # Add current user into villain group in order to open locked files
  sudo usermod -aG $VILLAIN_GROUP $USER
  # Change directories and files under villain control within mansion dir
  sudo chgrp -R $VILLAIN_GROUP mansion/*
  # Give everyone read and execute permission to files
  find ./mansion -type f -exec chmod 775 {} +
  # Lock directories from other than villains
  find ./mansion -type d -exec chmod 770 {} +
  chmod 775 mansion

  echo "Continue by pressing enter"
else 
  echo "You chose to continue as yourself. All directories and files are open for you from the start.

> Continue by pressing enter"
fi


read ok

echo "Years ago a mysterous group of evil villains emerged from the land of unknown.
Their group grew stronger.

> Continue by pressing enter"

read ok

echo "Villains took over the valuable and mysterious Unix mansion!

> Continue by pressing enter"

read ok

echo "After many years a noble and brave hero and their trusty sidekick cat named 'Cat' heard about the Mansion and decided to free it from villains control.

So the story begins...

> Continue by pressing enter"

read ok

echo "You will become the hero who solved the mysteries of the Unix mansion!
Along the journey You will encounter many challenges which will teach you the basics of the Unix ecosystem.

Start by entering the mansion by entering \"cd mansion\" on the command line.

Remember to read every hero's best friend the README.md.

It will tell you everything you need to know how to survive the mansion.

Good luck!

> End by pressing enter"
read ok
