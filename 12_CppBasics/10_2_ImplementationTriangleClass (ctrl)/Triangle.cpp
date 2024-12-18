#include "Triangle.h"
#include <iostream>
#include <cmath>

using std::cout;
using std::endl;

Triangle::Triangle(Dot* a, Dot* b, const double& x, const double& y)
{
	Triangle::dotA = a;
	Triangle::dotB = b;
	Triangle::dotC = new Dot(x, y);
}

Triangle::~Triangle()
{
	delete Triangle::dotC;
}

void Triangle::printSides() const
{
	double side1 = Triangle::dotA->distanceTo(*Triangle::dotB);
	double side2 = Triangle::dotB->distanceTo(*Triangle::dotC);
	double side3 = Triangle::dotC->distanceTo(*Triangle::dotA);

	cout << "Сторона 1: " << side1 << endl;
	cout << "Сторона 2: " << side2 << endl;
	cout << "Сторона 3: " << side3 << endl;
}

double Triangle::getPerimeter() const
{
	return Triangle::dotA->distanceTo(*Triangle::dotB) + Triangle::dotB->distanceTo(*Triangle::dotC) +
		Triangle::dotC->distanceTo(*Triangle::dotA);
}

double Triangle::getArea() const
{
	double area;
	double semiPerim = Triangle::getPerimeter() / 2.0;
	double side1 = Triangle::dotA->distanceTo(*Triangle::dotB);
	double side2 = Triangle::dotB->distanceTo(*Triangle::dotC);
	double side3 = Triangle::dotC->distanceTo(*Triangle::dotA);

	area = sqrt(semiPerim * (semiPerim - side1) * (semiPerim - side2) * (semiPerim - side3));
	return area;
}