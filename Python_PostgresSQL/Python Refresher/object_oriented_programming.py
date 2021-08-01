student = {"name": "Rolf", "grades": (89, 90, 78, 90)}

def average(sequence):
    return sum(sequence) / len(sequence)

print(average(student["grades"]))

#2
class Student:
    def __init__(self):
        self.name = "Rolf"
        self.grades = (89, 90, 78, 90)

student = Student()
print(student.name)
print(student.grades)