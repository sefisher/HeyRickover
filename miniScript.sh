#!/bin/bash
echo "Padding File to make sure 16000 samples."
#get duration:
duration=$(ffprobe -i rickover-0-0-trunc.wav -show_entries stream=duration -of compact=p=0:nk=1 -v 0)
#calulate: extraSamplesNeeded = 16000 - (1-duration)*16000
tmp=$(bc <<< "16000-(1-$duration)*16000")
#round
extraSamplesNeeded=$(printf "%.0f" $tmp)
echo $extraSamplesNeeded

#calculate: padBeginning = random number between 0 and extraSamplesNeeded
padBeginning=$(($RANDOM % $extraSamplesNeeded))
echo $padBeginning

#pad beginning: delay all channels by padBeginning samples (need total of 16000) (example below adds 500 samples)
ffmpeg -i rickover-0-0-16k.wav -af "adelay=${padBeginning}S" -y output.wav

#pad end: tell it the minumum total of samples is 16000 and it will pad the rest
ffmpeg -i output.wav -af "apad=whole_len=16000" -y finalOut.wav

echo $(ffprobe -i finalOut.wav -show_entries stream=duration -of compact=p=0:nk=1 -v 0)