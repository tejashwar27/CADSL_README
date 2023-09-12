# Python script for creating bar plot from CSV

# Required packages can be installed using following command
# pip install pandas

import matplotlib.pyplot as plt
import pandas as pd
import numpy as np

import sys

csv_file = str(sys.argv[1])

c = 4
w = 0.8/c

# Reading CSV file
data = pd.read_csv(csv_file)

df = pd.DataFrame(data)

print(df)

X = list(df.iloc[2:27, 0])
Y1 = [float(y) for y in list(df.iloc[2:27, 7])]
Y2 = [float(y) for y in list(df.iloc[2:27, 8])]
Y3 = [float(y) for y in list(df.iloc[2:27, 9])]
Y4 = [float(y) for y in list(df.iloc[2:27, 10])]

l1 = df.iloc[0, 7]
l2 = df.iloc[0, 8]
l3 = df.iloc[0, 9]
l4 = df.iloc[0, 10]

print(l1)
print(l2)
print(l3)
print(l4)


x_axis = np.arange(len(X))

print(x_axis)

# print(X)
# print(Y)

plt.rcParams.update({'font.size': 15})

fig = plt.figure(figsize=(16, 9))

# Plot the data using bar() method
plt.bar(x_axis + 0*w, Y1, w, label=l1, edgecolor='black')
plt.bar(x_axis + 1*w, Y2, w, label=l2, edgecolor='black')
plt.bar(x_axis + 2*w, Y3, w, label=l3, edgecolor='black')
plt.bar(x_axis + 3*w, Y4, w, label=l4, edgecolor='black')

t = w*(c-1)/2

plt.xticks(x_axis + t, X, rotation=45, ha='center')
# plt.xticks(x_axis + t, [])  # For ticks without x-axis labels
plt.xlabel("Server Traces")

plt.ylabel("Normalized Performance")
plt.ylim(1, 1.21)

plt.minorticks_on()
plt.tick_params(which="minor", bottom=False)

# plt.legend(ncol=c, bbox_to_anchor=(1.0, 1.0), loc="upper right")
plt.legend(ncol=c)

plt.grid(which='major', axis='y', color='#666666', linestyle='-')
plt.grid(which='minor', axis='y', color='#999999', linestyle='-', alpha=0.5)

plt.savefig("f1.pdf", edgecolor="black", bbox_inches="tight")
# Show the plot
plt.show()
