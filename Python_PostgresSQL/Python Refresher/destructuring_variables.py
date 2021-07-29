t = 5, 11
x, y = t

print(x, y)

#2
students_attendance = {"Rolf": 96, "Bob": 80, "Anne": 100}

print(list(students_attendance.items()))

for t in students_attendance.items():
    print(t)

#3
people = [("Bob", 42, "Mechanic"), ("James", 24, "Artist"), ("Harry", 32, "Lecturer")]

for name, age, profession in people:
    print(f"Name: {name}, Age: {age}, Profession: {profession}")