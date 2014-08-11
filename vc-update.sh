#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
FILENAME="vc-update.txt"
LOG="vc-update.log"
touch $FILENAME; touch $LOG
echo "Happily searching for Git files..."
find ~/ -name update-git.sh > $FILENAME
echo "Sadly searching for SVN files..."
find ~/ -name update-svn.sh >> $FILENAME
cd $DIR
echo "# Version Control Update Log" > $LOG
while read LINE
do
    NAME=$LINE
		echo "=> $NAME"
		sh $NAME >> $LOG
done < $FILENAME
cd $DIR
echo "Success!"
