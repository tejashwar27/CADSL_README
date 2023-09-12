# Python script for creating bar plot from CSV

# Required packages can be installed using following command
# pip install pandas

# How to run??
# python3 <path_to_csv> <no_of_bars> <first_data> <output_pdf>

# Assumptions:
# X-axis is first column in the CSV file.
# All of the bars are columns one after other


import matplotlib.pyplot as plt
import pandas as pd
import numpy as np

import sys

csv_file = str(sys.argv[1])

c = int(sys.argv[2])
w = 0.8/c

first = int(sys.argv[3])

outpdf = str(sys.argv[4])

# Reading CSV file
data = pd.read_csv(csv_file)

df = pd.DataFrame(data)

print(df)

X = list(df.iloc[1:27, 0])

print(X)

Y = []
L = []

for i in range(c):
    print(i)
    Y.append([float(y) for y in list(df.iloc[1:27, first+i])])
    L.append(df.iloc[0, first+i])

x_axis = np.arange(len(X))

print(x_axis)

plt.rcParams.update({'font.size': 15})

fig = plt.figure(figsize=(16, 9))

# Plot the data using bar() method
for k in range(c):
    plt.bar(x_axis + k*w, Y[k], w, label=L[k], edgecolor='black')

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

plt.savefig(outpdf, edgecolor="black", bbox_inches="tight")
# Show the plot
plt.show()
