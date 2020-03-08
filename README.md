# UNIX MANSION 

> A `bash`ing good educational adventure

**Unix mansion** is an directory based adventure "game" where you progress by learning and performing various tasks and answering questions about the Unix ecosystem.

## Mansion (project) structure
Each directory withing the Mansion has the same structure:
- room.txt
- task.txt
- unlock.sh
- directories (directions) `up, left, right`
- various directories and files

**room.txt**

Description of the room.

**task.txt**

Objectives, instructions, hints and tips what is the answers to get to the next room

**unlock.sh**

Checks the answer and possibly opens the next room. Useful only if `villain` mode is activated

**dir(ections)**

Possible rooms where to enter after correct answer.

**Various dirs/files**

Room might contain sub directories and files.


## How to play?

**NOTE**: You will learn more and more as you progress. Don't stress if everything isn't clear when you start. There will be questions.

***HINT**: Use `cd <directory>` command to enter new directory e.g. `cd mansion`* 

***HINT**: Run scripts on command line by adding a dot and dash `./` in front of the `.sh` file. See the first step.*

***HINT**: Find instructions for any unix command by adding `man` in front of the command e.g. `man cd`

1. Start the story by executing `start-the-adventure` script:\
`./start-the-adventure.sh`

    Optional **villain mode**: the start script will ask whether you want to activate **villain mode** which will create a group called `villain` and lock the `mansion` (directory) using unix permission system.'

2. Hero's oldest and trusted friend `cat` will help along the adventure. Running `cat <filename>` will output the content of the file. Use this to read `task.txt` and find a solution for the `question`
3. Enter your answer to `unlock.sh` script on command line with double quotes: `./unlock.sh "my answer"`. NOTE: Run the command using your systems default user instead of `hero`. 
4. Find next room with a task.


## About the project

Custom helper bash scripts were used to construct the mansion. Scripts from `./utils` folder were added temporarily to the `PATH` env variable in order to use scripts where ever within the project:\
`PATH="$PATH:$PWD/utils`

The project is tested with Ubuntu 18. If you encounter any errors or have improvement ideas please leave a comment for example via Github's issue panel or make a pull request :)