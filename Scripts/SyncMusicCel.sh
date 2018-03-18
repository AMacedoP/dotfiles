#!/bin/bash

rsync -auvhnie "ssh -p 2222 -T -o Compression=no -x" usuario@$1:/data/data/com.arachnoid.sshelper/home/SDCard/netease/cloudmusic/Music/ ~/Music

echo "Do you wanna sync music? (y/n)"
read ANS

if [[ $ANS = 'y' ]]
then
   rsync -auvhie "ssh -p 2222 -T -o Compression=no -x" usuario@$1:/data/data/com.arachnoid.sshelper/home/SDCard/netease/cloudmusic/Music/ ~/Music
else
   echo "Not syncing music"
fi
