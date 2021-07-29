friend_ages = {"Rolf": 24, "Adam": 30, "Anne": 27}

friend_ages["Rolf"] = 20
print(friend_ages)

#2
friends = [
    {"name": "Rolf", "age": 24},
    {"name": "Adam", "age": 30},
    {"name": "Anne", "age": 27},
]

print(friends)

#3
students_attendance = {"Rolf": 96, "Bob": 80, "Anne": 100}

for student, attendance in students_attendance.items():
    print(f"{student}: {attendance}")

#3.1
students_attendance = {"Rolf": 96, "Bob": 80, "Anne": 100}

if "Bob" in students_attendance:
    print(f"Bob: {students_attendance['Bob']}")
else:
    print("Bob is not a student in this class")

