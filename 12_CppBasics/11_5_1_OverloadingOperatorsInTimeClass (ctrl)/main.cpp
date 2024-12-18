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

    cout << "������ �����" << endl;
    cout << "����: ";
    cin >> hours;
    cout << "������: ";
    cin >> minutes;
    cout << "�������: ";
    cin >> seconds;
    Time time1(hours, minutes, seconds);
    time1.print();

    cout << "\n������ �����" << endl;
    cout << "����: ";
    cin >> hours;
    cout << "������: ";
    cin >> minutes;
    cout << "�������: ";
    cin >> seconds;
    Time time2(hours, minutes, seconds);
    time2.print();

    cout << "\n����� ������� � �������: ";
    Time time3 = time1 + time2;
    time3.print();

    cout << "\n������� ����� �������� � ������: ";
    Time time4 = time3 - time2;
    time4.print();

    cout << "\n����� 5,23 � ����������: ";
    Time time5 = 5.23 + time4;
    time5.print();

    cout << "\n����� ���������� � 5,23: ";
    Time time6 = time4 + 5.23;
    time6.print();

    if (time1 > time2)
    {
        cout << "\n������ ������, ��� ������" << endl;
    }
    else if (time1 < time2)
    {
        cout << "\n������ ������, ��� ������" << endl;
    }
    else if (time1 == time2)
    {
        cout << "\n������ � ������ �����" << endl;
    }
    else
    {
        cerr << "������" << endl;
    }

    return 0;
}