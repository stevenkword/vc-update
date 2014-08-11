#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
FILENAME="vc-update.txt"
touch $FILENAME
echo "Happily searching for Git files..."
find ~/ -name .gitignore > $FILENAME
#echo "Sadly searching for SVN files..."
#find ~/ -name .svn >> $FILENAME
cd $DIR
while read LINE
do
    NAME=$LINE
		echo "Exec: $NAME"
		git pull
		#svn update
done < $FILENAME
cd $DIR
echo "Success!"
