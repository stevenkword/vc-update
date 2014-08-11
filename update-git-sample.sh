#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
for FOLDER in $DIR/*/; do cd $FOLDER; echo "Updating " $FOLDER; git pull; cd $DIR; done
echo 'Done!'
