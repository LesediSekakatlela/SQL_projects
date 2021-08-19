import matplotlib.pyplot as plt
import charts
import database

charts.create_bar_chart(database.get_polls_and_votes())
plt.show()
