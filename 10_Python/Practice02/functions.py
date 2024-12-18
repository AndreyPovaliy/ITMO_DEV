import math as m


def enter_data():
    d1 = float(input("Введите кратчайшее расстояние между спасателем и кромкой воды, d1 (ярды)"))
    d2 = float(input("Введите кратчайшее расстояние от утопающего до берега, d2 (футы)"))
    h = float(input("Введите боковое смещение между спасателем и утопающим, h (ярды)"))
    v_sand = float(input("Введите скорость движения спасателя по песку, v_sand (мили в час)"))
    n = float(input("Введите коэффициент замедления спасателя при движении в воде, n"))
    theta1 = float(input("Введите направление движения спасателя по песку, theta1 (градусы)"))
    return d1, d2, h, v_sand, n, theta1


def converter(d1, h, v_sand, theta1):
    d1_foot = d1 * 3
    h_foot = h * 3
    v_sand_sec = v_sand * 1.466667
    theta1rad = (90 - theta1) * 0.017453
    return d1_foot, h_foot, v_sand_sec, theta1rad


def calculator(d1_foot, theta1rad,h_foot,d2,v_sand_sec,n,theta1):
    x = float(d1_foot) / m.tan(float(theta1rad))
    l1 = m.sqrt((float(d1_foot) ** 2) + (x ** 2))
    l2 = m.sqrt(((float(h_foot) - x) ** 2) + (float(d2) ** 2))
    t = 1 / float(v_sand_sec) * (l1 + (float(n) * l2))
    print(
        f"Если спасатель начнёт движение под углом theta1, равным {theta1} градусам, он достигнет утопащего через {t} секунды")
