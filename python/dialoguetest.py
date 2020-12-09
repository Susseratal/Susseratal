#This is just a demo of the dialogue system I'm writing for a game in unreal engine. This was just a python demo so that I knew roughly what to aim for

import time
import sys

npcname = ("Stranger")

print (npcname + ": Oh good, you're finally awake...")
name = input (npcname + ": What's your name friend? ").title()
print (name + ": " + name)
print (npcname + ": Well, I'm afraid we're in a prison " + name + ".")

while True:
    ask = input (npcname + ": Did you have any questions for me? ").lower()
    if ask in ["name", "what's your name", "who are you"]:
        print (name + ": " + ask)
        print (npcname + ": That's a good point. I'm Tom Flemming")
        npcname = ("Tom")
    elif ask == "prison":
        print (name + ": " + ask)
        print (npcname + ": It's the bastille. We're here because we've done something bad, and we both know that.")
    elif ask in ["reason", "why"]:
        print (name + ": " + ask)
        print (npcname + ": You mean why am I in here? I killed a noble. Cut his head clean off with my sabre.")
        print (npcname + ": The guards found me not long after. I got a serious beating before they dragged me in here.")
    elif ask == "why are you in here":
        print (name + ": " + ask)
        print (npcname + ": YI killed a noble. Cut his head clean off with my sabre.")
        print (npcname + ": The guards found me not long after. I got a serious beating before they dragged me in here.")
    elif ask == "no":
        print (name + ": " + ask)
        print (npcname + ": Fair enough. I'm gonna get some shuteye then")
        time.sleep (0.2)
        sys.exit()
    else:
        print ("I don't know about that, sorry")
