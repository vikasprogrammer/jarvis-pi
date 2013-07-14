#!/bin/bash

echo "Recording... Press Ctrl+C to Force Stop."

./lib/speech2text.sh

QUESTION=$(cat stt.txt)
echo "Me: " $QUESTION

ANSWER=$(python lib/queryprocess.py $QUESTION)
echo "Jarvis: " $ANSWER

./lib/text2speech.sh $ANSWER

