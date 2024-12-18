import numpy
import pickle


alpha = numpy.random.random()
beta = numpy.random.random()

mat_a = numpy.random.random((3, 3))
mat_b = numpy.random.random((3, 3))
mat_c = numpy.random.random((3, 3))

# F = open('datafile.pkl', 'w')
D = {'alpha': alpha, 'beta': beta, 'mat_a': mat_a, 'mat_b': mat_b, 'mat_c': mat_c }
#
# F = open('datafile.pkl', 'wb')
#
# pickle.dump(D, F)
# F.close()

filename = "datafile.txt"
with open(filename, "wb") as fh:
    pickle.dump(D, fh)

D_2 = []
with open(filename, "rb") as fh:
    D_2 = pickle.load(fh)
print(D_2)