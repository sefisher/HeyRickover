#!/bin/bash

#This script takes:
# -- from one folder - .m4a files with a series of word samples (created using voice memos on iOS and repeatedly saying a word)
# -- from another folder - .mp3 single word files (created from AWS Polly)
# and generates 1 second long single word .wav files with a 16000 sample rate into an output folder

#Requires pyAudioAnalysis - I developed this on a windows machine running Ubuntu on the command line

# long_samples_to_split_folder:
lngSmpl="/mnt/c/Users/steph/ai/sounds/input_new_long_files/"
# single_word_mp3_files_to_process_folder
snglSmpl="/mnt/c/Users/steph/ai/sounds/input_new_single_words/"
# folder to save used input files and used tmp files
oldInput="/mnt/c/Users/steph/ai/sounds/input_old/"
# working folder
wrk="/mnt/c/Users/steph/ai/sounds/working/"
# output folder
out="/mnt/c/Users/steph/ai/sounds/output/"

echo "Converting all .m4a audio files to .mp3"
for f in ${lngSmpl}*.m4a;
do
   ffmpeg -v 0 -i "$f" -ar 16000 "${f%.m4a}.mp3"
   mv "$f" "$oldInput"
   echo "$f"
done

echo "Splitting all .mp3 files into .wav files that have single words."
for f in ${lngSmpl}*.mp3;
do
   python3 ~/.local/lib/python3.8/site-packages/pyAudioAnalysis/audioAnalysis.py silenceRemoval -i "$f"  --smoothing 1.0 --weight 0.3
   mv "$f" "$oldInput"
   echo "$f"
done

echo "Converting all single word mp3s to wavs and moving to working folder"
for f in ${snglSmpl}*.mp3;
do
   ffmpeg -v 0 -i "$f" "${f%.mp3}.wav"
   mv "$f" "$oldInput"
   mv "${f%.mp3}.wav" "$wrk"
   echo "$f"
done
echo "Moving split-up word files to working folder"
for f in ${lngSmpl}*.wav;
do
   mv "$f" "$wrk"
   echo "$f"
done
echo "Truncating all working folder wav files to no more than 1 second; setting 16000 sample rate; then padding with random amounts of silence at beg and end."
for f in ${wrk}*.wav;
do
   echo "Processing ${f}:"
   tmp1f="${f%.wav}-tmp1.wav"
   tmp2f="${f%.wav}-tmp2.wav"
   finalf="${f%.wav}-final.wav"
   $(ffmpeg -t 1 -v 0 -i "$f" -ar 16000 "$tmp1f")

   mv "$f" "$oldInput"

   #get duration:
   duration=$(ffprobe -i "$tmp1f" -show_entries stream=duration -of compact=p=0:nk=1 -v 0)
   echo "Duration: ${duration}."
   if (( $(bc <<< "${duration} < 1.") )); 
   then
      echo "Padding"
      #calulate: extraSamplesNeeded = 16000 - (1-duration)*16000
      tmp=$(bc <<< "(1.-$duration)*16000")
      #round
      extraSamplesNeeded=$(printf "%.0f" $tmp)
      echo "extraSamplesNeeded: ${extraSamplesNeeded}."

      #calculate: padBeginning = random number between 0 and extraSamplesNeeded
      padBeginning=$(($RANDOM % $extraSamplesNeeded))
      echo "padBeginning: ${padBeginning}."

      #pad beginning: delay all channels by padBeginning samples (need total of 16000) (example below adds 500 samples)
      ffmpeg -i "$tmp1f" -v 0 -af "adelay=${padBeginning}S" -y "$tmp2f"

      #pad end: tell it the minumum total of samples is 16000 and it will pad the rest
      ffmpeg -i "$tmp2f" -v 0 -af "apad=whole_len=16000" -y "$finalf"
      
      mv "$tmp1f" "$oldInput"
      mv "$tmp2f" "$oldInput"
   else
      mv "$tmp1f" "$finalf"
   fi
   mv "$finalf" "$out"
   echo "-----------"
done