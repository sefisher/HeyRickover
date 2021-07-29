**WORKING ON GENERAL SOUNDS FILES FOR TRAINING OUR AI**

This section of the project is centered on making lots of single word sound clips (under 1 second in duration; e.g., "Rickover").  These files conform to the SPEECH_DATA data set provided by Google (the same set used in the DIY Alexa project). These are then used in training the tensorflow model to create a tigger-word (hot-word) detector.

The files in this folder do three things:
1) "makeRickover.py" is a python script that makes command line calls to AWS Polly to request all their english speaking voices to say the word provided with a variety of speeds and pitches. (Saved as single word MP3s).
2) "convertAudio.sh" is a bash file that does two things:
  a) Takes an iOS Voice Recorder files with your personally recorded voice saying the trigger word over and over (with a pause between), and chops them up into mp3s. 
  b) It then takes all the single word mp3s and convergts them to files matching SOUND_DATA format. It also moves the start time around within the 1 second randomly to avoid overfitting the AI to a specific start time in the sample.

#My Dev Environment
-I've been working in Ubuntu under WSL2 (linuix sublayer in windows).  I assume any linux environment can follow this if you don't have a windows machines that is set up to run Ubnutu on WSL (e.g., mac or raspberry pi, etc).
-In my ubuntu layer I install all the software dependencies for python, pyAudioAnalysis, ffmpeg, etc (see below).

#Notes on installing supporting software:
**TO RUN AWS POLLY (text to speech engine) FROM THE COMMAND LINE:**

Follow the Amazon Polly Command Line Tutorial below, with a few modifications for Windows WSL.

==INSTALL==
https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2-linux.html

-For me these commands worked: 
--curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
--unzip awscliv2.zip
--sudo ./aws/install

--pip install boto3

==CONFIGURE==
https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-quickstart.html#cli-configure-quickstart-config

MADE NEW AWS USER: awscliuser

--saved user access id and user secret key to user enviroment variables (so not stored in code):
my_aws_id_for_polly
my_aws_secret_key_for_polly

==RUNNING==
(Notes for my Pc)
Open an Ubuntu terminal.
cd ai (will take you to /mnt/e/AI-fishyDIYProjects)
cd sounds

==COMMANDS==
"aws polly describe-voices > voices.json"     --> this will use AWS polly to get a list of voices 
                                         (makeRickover.py will filter these voices down to those that speak English)

"py makeRickover.py"                          --> this will use AWS polly via CLI to generate the word
					 "rickover" said with ever voice 7 times with random pitch, speed, and volume.

move generated files into folder "input_new_single_words"
move saved .m4a files (from iOS voice memos with "Rickover...Rickover...Rickover") into folder "input_new_long_files"

"bash convertAudio.sh"                       -->runs the script that will convert the audio to sound_data format


