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

    cout << "������� �����\n";
    cout << "����: ";
    cin >> hours;
    cout << "������: ";
    cin >> minutes;
    cout << "�������: ";
    cin >> seconds;
    Time time_1(hours, minutes, seconds);
    cout << "��������� �����: ";
    time_1.print();

    cout << "\n������� ��������� �����\n";
    cout << "����: ";
    cin >> hours;
    cout << "������: ";
    cin >> minutes;
    cout << "�������: ";
    cin >> seconds;
    Time time_2(hours, minutes, seconds);
    cout << "�����, ��������� ������ ���: ";
    time_2.print();

    time_3 = time_1.addTime(time_2);
    cout << "\n�����: ";
    time_3.print();

    return 0;
}