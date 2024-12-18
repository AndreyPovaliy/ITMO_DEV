#include <iostream>
#include "Time.h"

using std::cout;
using std::cin;
using std::endl;
using std::cerr;

int main()
{
    system("chcp 1251");
    int hours, minutes, seconds;

    cout << "Первое время" << endl;
    cout << "Часы: ";
    cin >> hours;
    cout << "Минуты: ";
    cin >> minutes;
    cout << "Секунды: ";
    cin >> seconds;
    Time time1(hours, minutes, seconds);
    time1.print();

    cout << "\nВторое время" << endl;
    cout << "Часы: ";
    cin >> hours;
    cout << "Минуты: ";
    cin >> minutes;
    cout << "Секунды: ";
    cin >> seconds;
    Time time2(hours, minutes, seconds);
    time2.print();

    cout << "\nСумма первого и второго: ";
    Time time3 = time1 + time2;
    time3.print();

    cout << "\nРазница между третьими и вторым: ";
    Time time4 = time3 - time2;
    time4.print();

    cout << "\nСумма 5,23 и четвертого: ";
    Time time5 = 5.23 + time4;
    time5.print();

    cout << "\nСумма четвертого и 5,23: ";
    Time time6 = time4 + 5.23;
    time6.print();

    if (time1 > time2)
    {
        cout << "\nПервое больше, чем второе" << endl;
    }
    else if (time1 < time2)
    {
        cout << "\nВторое больше, чем первое" << endl;
    }
    else if (time1 == time2)
    {
        cout << "\nПревое и второе равны" << endl;
    }
    else
    {
        cerr << "Ошибка" << endl;
    }

    return 0;
}