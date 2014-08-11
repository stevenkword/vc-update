#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
FILENAME="vc-update.txt"
touch $FILENAME
echo "Happily searching for Git files..."
find ~/ -name update-git.sh > $FILENAME
echo "Sadly searching for SVN files..."
find ~/ -name update-svn.sh >> $FILENAME
cd $DIR
while read LINE
do
    NAME=$LINE
		echo "Exec: $NAME"
		sh $NAME
done < $FILENAME
cd $DIR
echo "Success!"
