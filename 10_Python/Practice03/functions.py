import math as m
import time


def optimal_angle():
    d1 = 8
    d2 = 10
    h = 50
    v_sand = 5
    n = 2

    d1 = d1 * 3
    h = h * 3
    v_sand = v_sand * 1.466667
    t_predict = 50
    for theta1 in range(30, 89):
        theta1rad = (90 - theta1) * 0.017453
        x = float(d1) / m.tan(float(theta1rad))
        l1 = m.sqrt((float(d1) ** 2) + (x ** 2))
        l2 = m.sqrt(((float(h) - x) ** 2) + (float(d2) ** 2))
        t = 1 / float(v_sand) * (l1 + (float(n) * l2))
        if (t < t_predict):
            t_predict = t
            theta1_final= theta1
    print(
                f"Если спасатель начнёт движение под углом theta1, равным {theta1_final} градусам, он достигнет утопащего через {t_predict} секунды")
