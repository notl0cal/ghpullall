#!/usr/bin/env bash
source $HOME/archives/ghpullall/config.sh
p=0
for i in `ls "$REPOSTASH/"`; do
	if [ -d "$REPOSTASH/$i" ]; then
		if [ -d "$REPOSTASH/$i/.git" ]; then
			cd "$REPOSTASH/$i"; pwd
			git fetch; git status; echo "Pulling..."; git pull
			sleep 0.5
			cp "$REPOSTASH/$i/"*.sh "$SHSTASH/$i" 2> /dev/null; ((p=p+1))
           	if [ -f "$SHSTASH/$i" ]; then
                echo "Stashed.."
            fi
	   	fi
	fi
done
echo "Files Stashed: $p"
sleep 0.3