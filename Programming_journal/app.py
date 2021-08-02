menu = """Please select one of the following options:
1)Add new entry for today.
2)View entries.
3)Exit.

Your selection:"""
welcom = "Welcom to the programming daiary!"

print(welcom)

while (user_input := input(menu)) != "3":  #We'll deal with user input here..
    if user_input == "1":
        print("Adding...")
    elif user_input == "2":
        print("Viewing...") 
    else:
        print("Invaild option,please try again!")