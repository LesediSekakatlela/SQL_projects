def multiply(*args):
    print(args)

multiply(1, 3, 5)

#2
def add(x, y):
    return x + y

nums = [3, 5]
add(*nums)
print(add(*nums))