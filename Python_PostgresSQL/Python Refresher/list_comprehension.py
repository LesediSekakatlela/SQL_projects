friends = ["Rolf", "Sam","Samantha", "Saurabh" ,"Jen"]
starts_s = []

for friend in friends:
    if friend.startswith("S"):
        starts_s.append(friend)

print(starts_s)