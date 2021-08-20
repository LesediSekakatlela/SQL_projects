import matplotlib.pyplot as plt
from data import polls

poll_titles = [poll[0] for poll in polls]
poll_men = [poll[1] for poll in polls]
poll_women = [poll[2] for poll in polls]

poll_x_coordinates = range(len(polls))

figure = plt.figure(figsize=(6, 6))
figure.subplots_adjust(bottom=0.35)
axes = figure.add_subplot()
axes.bar(
    poll_x_coordinates,
    poll_men
)
axes.bar(
    poll_x_coordinates,
    poll_women,
    bottom=poll_men
)

plt.xticks(poll_x_coordinates, poll_titles, rotation=30, ha="right")

plt.show()