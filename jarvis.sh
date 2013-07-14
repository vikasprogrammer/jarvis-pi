#!/bin/bash

echo "Recording... Press Ctrl+C to Stop."

./lib/speech2text.sh

QUESTION=$(cat stt.txt)
echo "Me: " $QUESTION
case "$QUESTION" in
"Jarvis" | "jarvis" | "jealous" | "John" | "Google")
    ./lib/text2speech.sh "Yes Sir!"
    ./wolfram.sh
    ;;
"play music" | "music" | "live music")
    mplayer -quiet ../Desktop/Alvida.mp3 & 
    ;;
"stop music")
    killall mplayer
    ;;
"reboot")
    sudo reboot
    ;;

*)
    echo "Not called"
    ;;
esac



