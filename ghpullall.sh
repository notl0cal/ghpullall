#!/usr/bin/env bash
source $HOME/ghpullall/config.sh
for i in `ls "$REPOSTASH/"`; do
	if [ -d "$REPOSTASH/$i" ]; then
		if [ -d "$REPOSTASH/$i/.git" ]; then
			cd "$REPOSTASH/$i"; pwd
			git fetch; git status; git pull; echo "Pulling..."
			sleep 0.5
			cp $REPOSTASH/$i/*.sh $SHSTASH/$i  2> /dev/null; echo "Copied..."
            if [ -d "$SHSTASH/$i.sh" ]; then
                echo "Done."
            fi
	    fi
	fi
done
sleep 0.3
