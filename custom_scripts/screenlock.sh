#! /bin/bash

#take a screenshot and save that to /tmp/lockpic.png
scrot /tmp/lockpic.png

#add a gaussian blur and save that, overwriting the first picture
convert /tmp/lockpic.png -blur 0x5 /tmp/lockpic.png
#convert /tmp/lockpic.png -scale 10% scale 1000% /tmp/lockpic.png

#convert /tmp/lockpic.png -gravity center -composite -matte /tmp/lockpic.png

# overlay an image on top
composite -blend 85 ~/Downloads/aigis.jpg /tmp/lockpic.png /tmp/lockpic.png

#start i3lock with the overlayed + blurred picture at /tmp/lockpic.png
i3lock -i /tmp/lockpic.png
