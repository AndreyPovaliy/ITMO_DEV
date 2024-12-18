#include <iostream>
#include <string>
using namespace std;



double a;
int n;

long double firBinSearch(double a, int n)
{
	double L = 0;
	double R = a;
	while (R - L > 1e-10)
	{
		double M = (L + R) / 2;
		if (pow(M, n) < a)
		{
			L = M;
		}
		else
		{
			R = M;
		}
	}
	return R;
}


int main()
{
	system("chcp 1251");
	double res;
	cout << "¬едите действительное число, больше или равное 1, не превосходит 1000, задано с точностью до 6 знаков после дес€тичной точки:\n" << endl;
	cin >>  a;
	cout << "¬едите натуральное, не превосход€щее 10:\n" << endl;
	cin >> n;
	res=firBinSearch(a, n);
	cout << "–езультат\n"<< res << endl;
	return 0;
}