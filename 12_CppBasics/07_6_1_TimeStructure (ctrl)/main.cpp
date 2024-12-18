#include <iostream>

using std::cout;
using std::cin;
using std::endl;



struct Time // ���������� ���������
{
    int hours;
    int minutes;
    int seconds;

    int getSeconds()
    {
        return (hours * 60 + minutes) * 60 + seconds;
    }

    void printTime()
    {
        cout << "���������� ������:" << getSeconds() << endl;
    }
};

Time addTime(const Time& time1, const Time& time2) //�������� �������
{
    Time time;
    time.hours = time1.hours + time2.hours;
    time.minutes = time1.minutes + time2.minutes;
    time.seconds = time1.seconds + time2.seconds;

    while (time.seconds >= 60)
    {
        time.minutes++;
        time.seconds = time.seconds - 60;
    }

    while (time.minutes >= 60)
    {
        time.hours++;
        time.minutes = time.minutes - 60;
    }

    return time;
}

Time subtractTime(const Time& t1, const Time& t2) // ��������� �������

{
    Time time;
    time.hours = t1.hours - t2.hours;
    time.minutes = t1.minutes - t2.minutes;
    time.seconds = t1.seconds - t2.seconds;

    while (time.seconds >= 60)
    {
        time.minutes++;
        time.seconds = time.seconds - 60;
    }

    while (time.minutes >= 60)
    {
        time.hours++;
        time.minutes = time.minutes - 60;
    }

    return time;
}

Time inputTime()  //������� ����� �������
{
    Time time;
    cout << "\n������ ����: ";
    cin >> time.hours;
    cout << "������� ������: ";
    cin >> time.minutes;
    cout << "������� �������:  ";
    cin >> time.seconds;
    return time;
}

int main()
{
    system("chcp 1251");
    Time enterTime1 = inputTime();
    enterTime1.printTime();

    Time enterTime2 = inputTime();
    enterTime2.printTime();

    cout << "\n�������� ������\n";
    Time sumTime = addTime(enterTime1, enterTime2);
    sumTime.printTime();

    cout << "\n��������� �������\n";
    Time substrTime = subtractTime(enterTime1, enterTime2);
    substrTime.printTime();
}