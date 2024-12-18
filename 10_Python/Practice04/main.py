from calculation import mat_scal_mul, mat_mat_mul
import time
import pickle
import os


os.system('generator.py')
filename = "datafile.txt"


D_2 = []
with open(filename, "rb") as fh:
    D_2 = pickle.load(fh)

values = list(D_2.values())

alpha = values[0]

beta = values[1]

mat_a = values[2]
mat_b = values[3]
mat_c = values[4]

start_time = time.time()
mat_temp = mat_scal_mul(alpha, mat_a)
mat_temp1 = mat_mat_mul(mat_temp, mat_b)
mat_temp2 = mat_scal_mul(beta, mat_c)
mat_result = mat_temp1 + mat_temp2
print(mat_result)
print("--- %s seconds ---" % (time.time() - start_time))
input("Press Enter")
# --- 0.0009958744049072266 seconds ---
