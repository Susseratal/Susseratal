import time
import sys
import getpass

def delay_print(s):
    for c in s:
        sys.stdout.write(c)
        sys.stdout.flush()
        time.sleep(0.025)
    sys.stdout.write("\n")
    sys.stdout.flush()

delay_print("powering up...")
delay_print("################################")
while True:
    command = input("C:/CSLeblanc/Iain ")
    command=command.lower()
    if command == "status":
        time.sleep(0.2)
        delay_print("Primary engines: ONLINE")
        time.sleep(0.2)
        delay_print("Secondary engines: ONLINE")
        time.sleep(0.2)
        delay_print("Phasers: ONLINE")
        time.sleep(0.2)
        delay_print("Heating: ONLINE")
        time.sleep(0.2)
        delay_print("Computer: ONLINE")
        time.sleep(0.2)
        delay_print("Fuel capacity: 72%")
    elif command == "check drive":
        time.sleep(0.2)
        delay_print("Drive A: Boot Disk")
        delay_print("Drive B: Functions")
        delay_print("Drive C: Disk 'Elite'")
    elif command == "cd elite":
        while True:
            command2 = input("C:/CSLeblanc/Iain/Elite ")
            command2=command2.lower()
            if command2 == "l":
                time.sleep(0.1)
                print ("Elite.mp4")
            elif command2 == "elite.mp4":
                sys.exit()
            elif command2 == "cd ..":
                break
            else:
                print ("-LebOS: cd: No such file or directory")
    elif command == "exit":
        delay_print("powering down....")
        sys.exit()
    else:
        print ("You've gone off script")
