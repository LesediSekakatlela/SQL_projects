#references to the same object a and b
a = [] 
b = a  

a.append(35) 

print(a)
print(b)

#creates two different lists
a = [] 
b = []

a.append(35)

print(id(a))
print(id(b))

a = 9798
b = 9798

print(id(a))
print(id(b))

a = 8876

print(id(a))
print(id(b))