#pragma once
#include <iostream>

using std::ostream;

class Point
{
public:
	Point();
	Point(double, double);
	double distanceToCenter() const;
	friend ostream& operator<< (ostream&, const Point&);
	bool operator< (const Point&) const;
	bool operator> (const Point&) const;
private:
	double x;
	double y;
};