**WORKING ON GENERAL SOUNDS FILES FOR TRAINING OUR AI**

This is where to keep files, info, etc for working on generating shot sound files that fit into the pattern of the SPEECH_DATA files used to train the neural network.
Notes on woking on sounds:

I've been working in Ubuntu under WSL2 (linuix sublayer in windows).  
In my ubuntu layer I install all the softwaer dependencies for python, pyAudioAnalysis, ffmpeg, etc.

TO RUN AWS POLLY (text to speech engine) FROM THE COMMAND LINE:
AMAZON POLLY FROM COMMAND LINE TUTORIAL

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
(Notes for Steve's Pc)
Open an ubuntu terminal.
cd ai (will take you to /mnt/e/AI-fishyDIYProjects)
cd sounds

==COMMANDS==
"aws polly describe-voices > voices.json"     --> this will use AWS polly to get a list of voices 
                                         (makeRickover.py will filter to those that do english)

"py makeRickover.py"                          --> this will use AWS polly via CLI to generate the word
					 "rickover" said with ever voice 7 times with random pitch, speed, and volume.

move generated files into folder "input_new_single_words"
move saved .m4a files (from iOS voice memos with "Rickover...Rickover...Rickover") into folder "input_new_long_files"

"bash convertAudio.sh"                       -->runs the script that will convert the audio to sound_data format


