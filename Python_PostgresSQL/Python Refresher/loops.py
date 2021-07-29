number = 7

while True:
    user_input = input("Would you like to play? (Y/n) ")

    if user_input == "n":
        break

    user_number = int(input("Guess our number: "))
    if user_number == number:
        print("You guessed correctly!")
    elif abs(number - user_number) == 1:
       print("You were off by one.")
    else:
        print("Sorry, it's wrong!")

#2
friends = ["Rolf", "Jen", "Bob", "Anne"]

for friend in range(4):
    print

#3
grades = [35, 67, 98, 100, 100]
total = sum(grades)
amount = len(grades)

print(total / amount)