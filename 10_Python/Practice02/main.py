from functions import enter_data, converter, calculator

# 8, 10, 50, 5, 2, 39.413
data = enter_data()

conv_data = converter(data[0], data[2], data[3], data[5])

calculator(conv_data[0], conv_data[3], conv_data[1], data[1], conv_data[2], data[4],
           data[5])
