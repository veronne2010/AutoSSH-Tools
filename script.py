import pyperclip

# Generic
space = " "

# Access data
ip = input("Enter IP Address: ")
user = input("Enter Username: ")

# Command parts
comcommand1stpart = "ssh" + space
chiocciola = "@"

# Command assembly
comandossh = comcommand1stpart + user + chiocciola + ip
print(comandossh)

# Copy to clipboard
while True:
    copy_input = input("Is the result above correct? (Y/n): ")
    if copy_input.lower() == "y":
        pyperclip.copy(comandossh)
        print("Command copied to clipboard")
        break
    elif copy_input.lower() == "n":
        print("If you think the result is incorrect, restart the script")
        break
    else:
        print("Invalid response, command not copied,")