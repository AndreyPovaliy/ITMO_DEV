#include <iostream>
#include<cmath>

using namespace std;
int main()
{
	system("chcp 1251");
	double a, p; 
	cout << "Для расчета площади равностороннего треугольника, введите длинну стороны\n";
	cin >> a;
	p=a*3;
	double x = sqrt(p/2*(p / 2-a) * (p / 2 - a) * (p / 2 - a));
	cout << "\tСторона "<<"\t" << "Площадь \n \t" << a << " \t\t" << x << endl;
	
	return 0;
}