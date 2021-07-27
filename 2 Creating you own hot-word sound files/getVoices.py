import json

# Opening JSON file
f = open('voices.json',)
  
# returns JSON object as 
# a dictionary
data = json.load(f)

lang = []

for i in data['Voices']:
    if(i['LanguageCode'].startswith('en-')): lang.append(i['Id'])

print(lang)
  
# Closing file
f.close()