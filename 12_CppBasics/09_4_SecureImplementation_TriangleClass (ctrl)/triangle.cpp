#include "triangle.h"
#include <cmath>
#include <iostream>

Triangle::Triangle()
{
	Triangle::sideA = 0;
	Triangle::sideB = 0;
	Triangle::sideC = 0;
}

Triangle::Triangle(double a, double b, double c)
{
	if (a > b + c || b > a + c || c > b + a)
	{
		throw WrongSideOfTriangle();
	}

	Triangle::sideA = a;
	Triangle::sideB = b;
	Triangle::sideC = c;
}

double Triangle::getArea()
{
	double semiPerim = (Triangle::sideA + Triangle::sideB + Triangle::sideC) / 2.0;
	double area = sqrt(semiPerim * (semiPerim - Triangle::sideA) * (semiPerim - Triangle::sideB) *
		(semiPerim - Triangle::sideC));
	return area;
}