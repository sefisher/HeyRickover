import boto3
import random
import json

import os  #used for storing / getting access key info in environment variables (not in github)

my_aws_id = os.getenv('my_aws_id_for_polly')
my_aws_secret_key = os.getenv('my_aws_secret_key_for_polly')

print(random.randint(3, 9))

polly_client = boto3.Session(
    aws_access_key_id=my_aws_id,                     
    aws_secret_access_key=my_aws_secret_key,
    region_name='us-east-1').client('polly')
#
# prosody tags
rate=['x-slow', 'slow', 'medium', 'fast','x-fast']
pitch=['x-low', 'low', 'medium', 'high', 'x-high']
volume=['x-soft', 'soft', 'medium', 'loud', 'x-loud']

# voiceids=
# Get VoiceIds that speak english
# Opening JSON file
f = open('voices.json',)
  
# returns JSON object as 
# a dictionary
data = json.load(f)
voiceids = []
for i in data['Voices']:
    if(i['LanguageCode'].startswith('en-')): voiceids.append([i['Id'],i['SupportedEngines']])
  
# Closing file
f.close()

hotword='Rickover'

for i in range(len(voiceids)):
    if 'standard' in voiceids[i][1]:
        for j in range(7):
            print(i,voiceids[i][0],voiceids[i][1])
            response = polly_client.synthesize_speech(VoiceId=voiceids[i][0],
                        TextType='ssml', OutputFormat='mp3', 
                        Text = "<speak><prosody amazon:max-duration='1s'><prosody rate='"+rate[random.randint(0, 4)]+"' ><prosody pitch='"+pitch[random.randint(0, 4)]+"'><prosody volume='"+volume[random.randint(0, 4)]+"'>"+hotword+"</prosody></prosody></prosody></prosody></speak>")

            file = open("rickover-" + str(i) + "-" + str(j) + ".mp3", 'wb')
            file.write(response['AudioStream'].read())
            file.close()