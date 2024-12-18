#pragma once
#include "Dot.h"

class Triangle
{
public:
	Triangle(Dot*, Dot*, const double&, const double&);
	~Triangle();
	void printSides() const;
	double getPerimeter() const;
	double getArea() const;
private:
	Dot* dotA;
	Dot* dotB;
	Dot* dotC;
};