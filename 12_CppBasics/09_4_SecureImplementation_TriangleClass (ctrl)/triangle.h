#pragma once
#include <string>
#include <iostream>

using std::cout;
using std::cin;
using std::endl;
using std::string;


class Triangle
{
public:
	Triangle();
	Triangle(double a, double b, double c);
	double getArea();
	class WrongSideOfTriangle
	{
	public:
		Triangle::WrongSideOfTriangle() : message("Длиннна одной стороны больше суммы длин дргих сторон") {}
		void printMessage() const { cout << message << endl; }
	private:
		string message;
	};
private:
	double sideA;
	double sideB;
	double sideC;
};