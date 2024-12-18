#pragma once
#include <string>
#include <iostream>

class Time
{
public:
	Time();
	Time(int hours, int minutes, int seconds);
	void check();
	void print();
	int convertToSec() const;
	Time addTime(const Time& time2) const;
	Time operator+ (const Time&) const;
	friend Time operator+ (double, const Time&);
	friend Time operator+ (const Time&, double);
	Time operator- (const Time&) const;
	bool operator> (const Time&) const;
	bool operator< (const Time&) const;
	bool operator== (const Time&) const;

	class TimeError
	{
	public:
		TimeError() : message("Неверное значение времени") {}
		void printMessage() const { std::cout << message << std::endl; }
	private:
		std::string message;
	};
private:
	int hours;
	int minutes;
	int seconds;
};
