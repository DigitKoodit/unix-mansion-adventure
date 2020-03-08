#!/bin/bash

VILLAIN_GROUP=niemisami

chown -R :$VILLAIN_GROUP .
# Give everyone read and execute permission to files
find ./mansion -type f -exec chmod 775 {} +
# Lock directories from other than villains
find ./mansion -type d -exec chmod 770 {} +