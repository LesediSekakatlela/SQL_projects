# --How to draw line graphs--
# import matplotlib.pyplot as plt
#
# plt.figure()
#
# plt.xlabel("Categories")
# plt.ylabel("Amounts")
# plt.title("Categories vs. Amounts")
#
# lines = plt.plot(["Men", "Women", "Children"], [3, 5, 9], "o")
# plt.show()

# -- matplotlib figures axes and plots --
# import matplotlib.pyplot as plt
#
# plt.figure()
# plt.plot([1, 2, 3, 4], [3, 5, 9, 25])
# plt.show()


import matplotlib.pyplot as plt

figure = plt.figure()
ax1 = figure.add_subplot(1, 2, 1)
ax2 = figure.add_subplot(1, 2, 2)

ax1.plot([1, 2, 3, 4], [3, 5, 9, 25])
ax2.plot([1, 2, 3, 4], [5, 7, 11, 17])

plt.show()