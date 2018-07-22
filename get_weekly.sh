#!/bin/bash

>get_weekly.debug
set -x
exec 2>>get_weekly.debug

# Get weekly playlist Alex Cudayo

dt=`date +"%Y%m%d"`
echo "$dt"

if [ ! -d $HOME/Music/${dt} ]; then
	mkdir -p $HOME/Music/${dt}
fi

cd ${HOME}/Music/${dt}

echo "Getting Alex Cudayo for week [$dt]"
youtube-dl -i --dateafter now-1week https://www.youtube.com/channel/UCAs7ebj9vFlFqwnEPFd6LXA/videos
echo "Getting Jordan Peterson for week [$dt]"
youtube-dl -i --dateafter now-1week https://www.youtube.com/user/JordanPetersonVideos/videos
