#include "time.h"
#include <iostream>


using std::cout;
using std::cin;
using std::endl;


Time::Time()
{
    Time::hours = 0;
    Time::minutes = 0;
    Time::seconds = 0;
}

Time::Time(int hours, int minutes, int seconds)
{
    Time::hours = hours;
    Time::minutes = minutes;
    Time::seconds = seconds;
    Time::check();
}

void Time::check()
{
    while (Time::seconds >= 60)
    {
        Time::minutes++;
        Time::seconds = Time::seconds - 60;
    }

    while (Time::minutes >= 60)
    {
        Time::hours++;
        Time::minutes = Time::minutes - 60;
    }
}

void Time::print()
{
    cout << Time::hours << ":" << Time::minutes << ":" << Time::seconds << endl;
}

Time Time::addTime(const Time& time2) const
{
    Time sumTime;
    sumTime.hours = (hours)+time2.hours;
    sumTime.minutes = (minutes)+time2.minutes;
    sumTime.seconds = (seconds)+time2.seconds;
    sumTime.check();
    return sumTime;
}