#include <iostream>
#include "time.h"

using std::string;
using std::endl;
using std::cout;
using std::cin;


int main()
{
    system("chcp 1251");
    int hours;
    int minutes;
    int seconds;
    Time time_3;

    try
    {
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

        cout << "\nВведите еще одно время\n";
        cout << "Часы: ";
        cin >> hours;
        cout << "Минуты: ";
        cin >> minutes;
        cout << "Секунды: ";
        cin >> seconds;

        Time time_2(hours, minutes, seconds);
        cout << "Время, введенное повторно: ";
        time_2.print();

        time_3 = time_1.addTime(time_2);
        cout << "\nСумма введенных времен равна: ";
        time_3.print();
    }
    catch (Time::TimeError& er)
    {
        cout << "\nОшибка: ";
        er.printMessage();
        return 1;
    }

    return 0;
}