# UNIX MANSION 

> A `bash`ing good adventure

Mansion (project) structure
- task.txt
- unlock.sh
- dir(ections) `up, down, left, right`
- various directories and files


## Basics

Start by executing `start-the-adventure.sh`:\
`./start-the-adventure.sh`

The script will create a group called `villain` and lock the `mansion` (directory) using unix permission system.



### About the project building process

Custom helper bash scripts were used to construct the mansion. Scripts from `./utils` folder were added temporarily to the `PATH` env variable in order to use scripts where ever within the project:\
`PATH="$PATH:$PWD/utils`