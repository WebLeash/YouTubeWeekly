#!/bin/bash

>yt.log
set -x
exec 2>>yt.log

# Get an Album

dt=`date +"%Y%m%d"`
echo "$dt"

if [ ! -d $HOME/Music/${dt} ]; then
	mkdir -p $HOME/Music/${dt}
fi

cd ${HOME}/Music/${dt}

echo "pass URL >$1<"

if [[ -z "$1" ]]; then
	echo "No URL - Please pass the URL"
	exit 0
fi

	
youtube-dl --extract-audio --audio-format mp3 $1
