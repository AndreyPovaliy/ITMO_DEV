#pragma once

class Time
{
public:
	Time();
	Time(int hours, int minutes, int seconds);
	void check();
	void print();
	Time addTime(const Time& time2) const;
private:
	int hours;
	int minutes;
	int seconds;
};