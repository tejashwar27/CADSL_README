# Python script for creating bar plot from CSV

import matplotlib.pyplot as plot
import pandas as pd

import sys, os

csv_file = str(sys.argv[1])

# Reading CSV file
data = pd.read_csv("csv_file")
