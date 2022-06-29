#Text_TO_SPEECH_Assistant_Jarvis2.0
#!/usr/bin/env python3

import pyttsx3 as pyt # pip install pyttsx3 == text to speech

engine = pyt.init()

def speak(audioString):
    engine.say(audioString)
    print(audioString)
    engine.runAndWait()

while 1:
    data = input("Enter your command: ")
    speak(data)
    if data == "exit":
        break

