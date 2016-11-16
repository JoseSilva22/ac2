import pandas as pd
import numpy as np
from os import listdir
import sys

def main(argv):
	files = listdir(argv[0])
	
	for file in files:
		inputs = pd.read_csv(argv[0]+file, delim_whitespace=True, header=0, dtype=np.float64).as_matrix()
		inputs_means = inputs.mean(axis=0)
		print(file)
		print(inputs_means)

if __name__ == "__main__":
	main(sys.argv[1:])