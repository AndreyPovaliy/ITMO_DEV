#pragma once
#include <string>
#include <iostream>

using std::string;
using std::endl;
using std::cout;
using std::cin;


class Time
{
public:
	Time();
	Time(int hours, int minutes, int seconds);
	void check();
	void print();
	Time addTime(const Time& time2) const;
	class TimeError
	{
	public:
		TimeError() : message("Неверное значение") {}
		void printMessage() const { cout << message << endl; }
	private:
		string message;
	};
private:
	int hours;
	int minutes;
	int seconds;
};