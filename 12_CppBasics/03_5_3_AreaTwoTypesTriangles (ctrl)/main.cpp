#include <iostream>
#include<cmath>



using std::cout;
using std::cin;
using std::endl;




double areaTriangle(double);

double areaTriangle(double, double, double);

int main()
{
	system("chcp 1251");
	double a;
	double a1;
	double b1;
	double c1;

	cout << "Введите длинну стороны равностороннего треугольника: \n" << endl;
	cin >> a;
	cout << "Введите длинны сторон разностороннего треугольника: \n" << endl;
	cin >> a1;
	cin >> b1;
	cin >> c1;

	double equilateralTriangle = areaTriangle(a);
	double versatileTriangle = areaTriangle(a1, b1, c1);

	cout << "Площадь равностороннего треугольника: \n" << equilateralTriangle << endl;
	cout << "Площадь разностороннего треугольника: \n" << versatileTriangle << endl;

	return 0;
}

double areaTriangle(double a) {

	double p;
	double s;

	p = 3 * a / 2;
	s = sqrt(p * 3 * (p - a));

	return s;
}


double areaTriangle(double a, double b, double c) {

	double p;
	double s;


	p = (a + b + c) / 2;
	s = sqrt(p * (p - a) * (p - b) * (p - c));

	return s;
}