#!/bin/bash

rsync -auvhnie "ssh -p 2222 -T -o Compression=no -x" usuario@$1:/sdcard/netease/cloudmusic/Music/ ~/Music

echo "Do you wanna sync music? (y/n)"
read ANS

if [[ $ANS = 'y' ]]
then
   rsync -auvhiPe "ssh -p 2222 -T -o Compression=no -x" usuario@$1:/sdcard/netease/cloudmusic/Music/ ~/Music
else
   echo "Not syncing music"
fi
