import matplotlib.pyplot as plt
from data import polls

poll_titles = [poll[0] for poll in polls]
poll_men = [poll[1] for poll in polls]
poll_women = [poll[2] for poll in polls]

poll_x_coordinates = range(len(polls))

figure = plt.figure(figsize=(6, 6))
axes = figure.add_subplot()
axes.bar(
    poll_x_coordinates,
    poll_men,
    tick_label=poll_titles
)
axes.bar(
    poll_x_coordinates,
    poll_women,
    tick_label=poll_titles,
    bottom=poll_men
)

plt.show()