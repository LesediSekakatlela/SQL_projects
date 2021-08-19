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

# --add multiple subplots--
# import matplotlib.pyplot as plt
#
# figure = plt.figure()
# ax1 = figure.add_subplot(1, 2, 1)
# ax2 = figure.add_subplot(1, 2, 2)
#
# ax1.plot([1, 2, 3, 4], [3, 5, 9, 25])
# ax2.plot([1, 2, 3, 4], [5, 7, 11, 17])
#
# plt.show()

import matplotlib.pyplot as plt

option_votes = [63, 28, 8]
option_names = [
    "Flask"
    "Django"
    "It depends"
]

figure = plt.figure()
axes = figure.add_subplot()

axes.pie(
    option_votes,
    labels=option_names,
    explode=[0.1, 0, 0]
)

plt.show()