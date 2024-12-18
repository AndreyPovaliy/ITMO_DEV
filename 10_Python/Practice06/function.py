import csv
import math as m
import numpy as n

filename = "zip_codes_states.csv"

rows = []
with open(filename, "r", encoding="utf-8") as fh:
    reader = csv.reader(fh)
    rows = list(reader)


def command():
    command1 = input("Command ('loc', 'zip', 'dist', 'end')")
    if command1 == "loc":
        code = input("Enter a ZIP Code to lookup")
        for row in rows:
            if row[0] == code:
                print(f"ZIP Code {row[0]} is in {row[3]}, {row[4]}, {row[5]} county")

    elif command1 == "zip":
        city = n.core.defchararray.lower(str(input("Enter a city name to lookup")))
        state = n.core.defchararray.lower(str(input("Enter the state name to lookup")))
        zip_list = []
        for row in rows:
            if n.core.defchararray.lower(row[3]) == city and n.core.defchararray.lower(row[4]) == state:
                zip_list.append(row[0])
        print(f"The following ZIP Code(s) found for {city}, {state}: {zip_list}")


    elif command1 == "dist":

        code1 = input("Enter first ZIP Code")
        code2 = input("Enter first ZIP Code")

        for row in rows:
            if row[0] == code1:
                x1 = row[1]
                y1 = row[2]
        return (x1, y1)

        for row in rows:
            if row[0] == code2:
                x2 = row[1]
                y2 = row[2]
        return (x2, y2)

        d = m.sqrt((x2 - x1) ** 2 + (y2 - y1) ** 2)
        print(f"The distance between {code1} and {code2} is {d}")

    elif command1 == "end":
        exit()
    else:
        print("Неверная команда")
