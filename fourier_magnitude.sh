#!/bin/bash
ffmpeg -i "$1" "$1.jpg" #file is now JPEG
convert "$1.jpg" -fft +depth +adjoin out%d.png
ffmpeg -i "out0.png" "out0.jpg"
./corrupt.sh "out0.jpg" 1 "$((RANDOM%1000))" x "$2" #corrupt the image, requires 2421a4f1fd43dfb4f8225325c/glitch-art
convert 2out0.jpg out1.png -ift "$1._c.png"
ls "$1._c.png"
rm "2out0.jpg" "$1.jpg" "out0.png" "out0.jpg" "out1.png"
