#!/bin/bash

rsync -auvhnie "ssh -p 2222 -T -o Compression=no -x" usuario@$1:/storage/88B0-1EE8/Android/data/com.netease.cloudmusic/files/Documents/Music/ ~/Music

echo "Do you wanna sync music? (y/n)"
read ANS

if [[ $ANS = 'y' ]]
then
   rsync -auvhie "ssh -p 2222 -T -o Compression=no -x" usuario@$1:/storage/88B0-1EE8/Android/data/com.netease.cloudmusic/files/Documents/Music/ ~/Music
else
   echo "Not syncing music"
fi
