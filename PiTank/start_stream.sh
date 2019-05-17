#!/bin/sh

PORT="8080"
WIDTH="640"
HEIGHT="480"
FRAMERATE="10"
cd /home/pi/Downloads/mjpg-streamer/mjpg-streamer-experimental/
export LD_LIBRARY_PATH=.
./mjpg_streamer \
    -i "input_raspicam.so -x $WIDTH -y $HEIGHT -fps $FRAMERATE " \
    -o "output_http.so -w ./www -p $PORT"
