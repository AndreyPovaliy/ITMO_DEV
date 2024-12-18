#include <iostream>
#include <string>
#include "time.h"

using std::cout;
using std::cin;
using std::endl;

int main()
{
    system("chcp 1251");
    int hours;
    int minutes;
    int seconds;
    Time time_3;

    cout << "Введите время\n";
    cout << "Часы: ";
    cin >> hours;
    cout << "Минуты: ";
    cin >> minutes;
    cout << "Секунды: ";
    cin >> seconds;
    Time time_1(hours, minutes, seconds);
    cout << "Введенное время: ";
    time_1.print();

    cout << "\nВведите следующее время\n";
    cout << "Часы: ";
    cin >> hours;
    cout << "Минуты: ";
    cin >> minutes;
    cout << "Секунды: ";
    cin >> seconds;
    Time time_2(hours, minutes, seconds);
    cout << "Время, введенное второй раз: ";
    time_2.print();

    time_3 = time_1.addTime(time_2);
    cout << "\nСумма: ";
    time_3.print();

    return 0;
}