import matplotlib.pyplot as plt

plt.figure()

plt.xlabel("Categories")
plt.ylabel("Amounts")
plt.title("Categories vs. Amounts")

lines = plt.plot(["Men", "Women", "Children"], [3, 5, 9], "o")
plt.show()

# import matplotlib.pyplot as plt
#
# plt.figure()
# plt.plot([1, 2, 3, 4], [3, 5, 9, 25])
# plt.show()

