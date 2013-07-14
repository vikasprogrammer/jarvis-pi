Jarvis Pi
=========

Jarvis like voice control with Raspberry Pi

Description
=========

A Simple collection of bash scripts for your raspberry pi to search Wolfram Alpha, CleverBot and run UNIX commands (e.g play music) using Google's voice technology.

Example
========
<pre>
pi@raspberrypi ~/jarvis $ ./jarvis.sh 
Recording... Press Ctrl+C to Force Stop.
Processing...
Me:  Jarvis
Recording... Press Ctrl+C to Force Stop.
Processing...
Me:  how much is 6 divided by 5
Jarvis:  6/5 (irreducible)


pi@raspberrypi ~/jarvis-pi $ ./bot.sh 
Recording... Press Ctrl+C to Force Stop.
Processing...
Me:  who are you
Jarvis:  You should answer your name.
</pre>

Dependencies
========

sudo apt-get install ffmpeg sox mplayer 
(also needs wget to talk to Google, Wolfram Alpha etc.)


Settings
========

Sox (used for recording) is set to detect silence for 1 second. Change lib/speech2text.sh -> sox ... silence 1. 
Update your wolfram alpha key in lib/queryprocess.py

Source
========

Thanks for great blog post at http://blog.oscarliang.net/raspberry-pi-voice-recognition-works-like-siri/
