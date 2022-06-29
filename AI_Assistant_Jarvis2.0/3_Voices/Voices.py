# #Text_TO_SPEECH_Assistant_Jarvis2.0
# #!/usr/bin/env python3

# import pyttsx3 as pyt # pip install pyttsx3 == text to speech

# engine = pyt.init()

# def speak(text):
#     engine.say(text)
#     engine.runAndWait()

# def getvoices():
#     voices = engine.getProperty('voices')
#     for voice in voices:
#         print("ID: %s" % voice.id)
#         print("Name: %s" % voice.name)
#         print("Age: %s" % voice.age)
    

#         if voice == 1:
#             engine.setProperty('voice', voices[0].id)
#             break    
#             if voice == 2:
#                 engine.setProperty('voice', voices[1].id)
#                 break


#         getvoices(voice)

# getvoices()


# ######################################################################################################################
# Change index of voice to change the voice


# import pyttsx3

# engine = pyttsx3.init()
# voices = engine.getProperty('voices')

# engine.setProperty('voice', voices[10].id) #change index to change voices
# engine.say('I\'m a little teapot...')

# engine.runAndWait()


# ######################################################################################################################
# Play all voices


# import pyttsx3
# engine = pyttsx3.init()
# voices = engine.getProperty('voices')
# for voice in voices:
#    engine.setProperty('voice', voice.id)  # changes the voice
#    engine.say('The quick brown fox jumped over the lazy dog.')
# engine.runAndWait()


# ######################################################################################################################
# Setting a specific id of voice


# import pyttsx3
# engine = pyttsx3.init()
# engine.setProperty('voice', 'English')  
# engine.say('I am a robot')
# engine.runAndWait()


# ######################################################################################################################
# An example of module usage


# import pyttsx3
# engine = pyttsx3.init()
# voices = engine.getProperty('voices')
# engine.setProperty('voice', voices[10].id)
# def speak(audio):
#     engine.say(audio)
#     engine.runAndWait()
# speak('Hello World')


# ######################################################################################################################
# Save to system written text file

# from gtts import gTTS
# import os
# tts = gTTS(text='Вы, ребята, занимаетесь не тем делом. Вы должны начать обучать людей разговорному английскому языку.', lang='ru')
# tts.save("hello6.mp3")
# os.system("mpg321 hello6.mp3")


# ######################################################################################################################

import pyttsx3

engine = pyttsx3.init()

# voices = engine.getProperty('voices')

# for voice in voices:
#     print(voice.age, voice.name, voice.id, voice.languages, voice.gender)

# male = voice.gender

# Female Voice

import pyttsx3
engine = pyttsx3.init()
voices = engine.getProperty('voices')
engine.setProperty('voice', 'english_rp+f3') #my preference
engine.say('Hello World')
engine.runAndWait()