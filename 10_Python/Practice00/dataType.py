import numpy as n

string1 = "This is a string."
string2 = " This is another string."

# определяет длину строки;
a = len(string1)
print(a)

# преобразует первый символ каждого слова в строке к верхнему регистру;
n.core.defchararray.title(string1)

# символы строки преобразуются к нижнему регистру;
n.core.defchararray.lower(string2)

# символы строки преобразуются к верхнему регистру;
n.core.defchararray.upper(string2)

# удаляются пробелы в конце строки;
n.core.defchararray.rstrip(string1)

# удаляются пробелы в начале строки;
n.core.defchararray.lstrip(string1)

# удаляются пробелы с обоих концов;
n.core.defchararray.strip(string1)

# удаляются с обоих концов указанные символы в параметре функции;
n.core.defchararray.strip('0')

d = "qwerty"
ch = d[2]

chm = d[1:3]

# d[2] = 'o' Строки в языке Python являются неизменяемыми!

param = "string" + str("15")

# n1 = input("Enter the first number: ")
# n2 = input("Enter the second number: ")
# n3 = float(n1) + float(n2)
# print(n1 + " plus " + n2 + " = ", n3)


a = 1 / 3
print("{:7.3f}".format(a))

a = 2 / 3
b = 2 / 9
print("{:7.3f} {:7.3f}".format(a, b))
print("{:10.3e} {:10.3e}".format(a, b))

list1 = [82, 8, 23, 97, 92, 44, 17, 39, 11, 12]
