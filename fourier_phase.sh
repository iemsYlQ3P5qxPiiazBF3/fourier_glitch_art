#!/bin/bash
ffmpeg -i "$1" "$1.jpg" #file is now JPEG
convert "$1.jpg" -fft +depth +adjoin out%d.png
ffmpeg -i "out1.png" "out1.jpg"
./corrupt.sh "out1.jpg" 1 "$((RANDOM%1000))" x "$2" #corrupt the image, requires 2421a4f1fd43dfb4f8225325c/glitch-art
convert out0.png 2out1.jpg -ift "$1._c.png"
ls "$1._c.png"
rm "2out1.jpg" "$1.jpg" "out0.png" "out1.jpg" "out1.png"
