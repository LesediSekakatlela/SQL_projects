from typing import List
#a parameter should not be equal to a mutable value,the default list will apply to all students =[]
class Student:
    def __init__(self, name: str, grades: List[int] = []): #This is bad!                                   
        self.name = name
        self.grades = grades

    def take_exam(self, result: int):
        self.grades.append(result)

bob = Student("Bob")
rolf = Student("Rolf")
bob.take_exam(90)
print(bob.grades)
print(rolf.grades)