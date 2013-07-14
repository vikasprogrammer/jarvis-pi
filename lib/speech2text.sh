#!/bin/bash

#arecord -D "plughw:1,0" -q -f cd -t wav > file.wav 
#sox -t alsa plughw:1,0 file.wav silence 1 0 0.5% -1 1.0 1%
timeout	8 sox -t alsa plughw:1,0 file.wav silence 1 0 5% 1 1.0 5% 2>/dev/null
cat file.wav | ffmpeg -loglevel panic -y -i - -ar 16000 -acodec flac file.flac 2>/dev/null 

echo "Processing..."
wget -q -U "Mozilla/5.0" --post-file file.flac --header "Content-Type: audio/x-flac; rate=16000" -O - "http://www.google.com/speech-api/v1/recognize?lang=en-us&client=chromium" | cut -d\" -f12  >stt.txt


rm file.flac  > /dev/null 2>&1
rm file.wav
