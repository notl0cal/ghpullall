#!/bin/bash
REPO=/home/chance/
for i in `ls "$REPO/"`
do
	if [ -d "$REPO/$i" ]
	then
		if [ -d "$REPO/$i/.git" ]
		then	
			cd "$REPO/$i"
			pwd
			sleep 0.5
			git status
			echo "Fetching..."
			git fetch
			sleep 0.2
			echo "Pulling..."
			git pull
			sleep 0.2
		fi
	fi
done
echo "Done."
sleep 0.3
