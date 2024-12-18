#include <iostream>



using std::cout;
using std::cin;
using std::endl;

double cubicRoot(double a) {

	double x1;
	double x2 = a;

	do {

		x1 = x2;
		x2 = (a / (x1 * x2) + 2 * x1) / 3;
	} while (abs(x1 - x2) > 1 / 100000);
	return x2;
}


int main()
{
	system("chcp 1251");
	int a;
	double func1;
	double func2;

	cout << "������� �����: \n" << endl;
	cin >> a;
	func1 = pow(a, 1.0 / 3);
	func2 = cubicRoot(a);
	cout << "��������� �� ����������� �������: \n"<< func1 <<"\n��������� �� ������������ �������: \n"<< func2 << endl;



	return 0;
}