import time
import datetime
release_date = datetime.date(2020,12,10)
today = datetime.date.today()
delta = release_date - today
past = -delta.days
if release_date == today:
    print ("Cyberpunk comes out today!!")
elif delta.days == 1:
    print ("Cyberpunk comes out tomorrow!")
elif delta.days == -1:
    print ("Cyberpunk came out yesterday!")
elif delta.days <0:
    print ("It has been " + str(past) + " days since Cyberpunk came out")
else:
    print("Cyberpunk 2077 releases in " + str(delta.days) + " days")
