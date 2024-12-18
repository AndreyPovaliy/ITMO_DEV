import numpy as np


def mat_scal_mul(scal, mat):
    mat_temp = scal * np.matrix(mat)
    return mat_temp


def mat_mat_mul(mat1, mat2):
    a = np.matrix(mat1)
    b = np.matrix(mat2)
    mat_temp = a.dot(b)
    return mat_temp
