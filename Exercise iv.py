command = ""
started = False
while True:
    command = input(">")
    if command.lower() == "start":
        if started:
            print("car already started")
        else:
            started = True
            print("car started...")
            break
    elif command.lower() == "stop":
        if not started:
            print("car already stopped")
        else:
            started = False
            print("car stopped.")
    elif command.lower() == "help":
        print("""
start - to start the car
stop - to stop the car
quit - to quit
        """)
    elif command.lower() == "quit":
        break
    else:
        print('invalid command')