#include "time.h"
#include <iostream>

using std::string;
using std::endl;
using std::cout;
using std::cin;


Time::Time()
{
    Time::hours = 0;
    Time::minutes = 0;
    Time::seconds = 0;
}

Time::Time(int hours, int minutes, int seconds)
{
    if (hours < 0 || minutes < 0 || seconds < 0)
    {
        throw TimeError();
    }

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

    if (sumTime.hours < 0 || sumTime.minutes < 0 || sumTime.seconds < 0)
    {
        throw TimeError();
    }

    sumTime.check();
    return sumTime;
}