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
	cout << "������ �������������� �����, ������ ��� ������ 1, �� ����������� 1000, ������ � ��������� �� 6 ������ ����� ���������� �����:\n" << endl;
	cin >>  a;
	cout << "������ �����������, �� ������������� 10:\n" << endl;
	cin >> n;
	res=firBinSearch(a, n);
	cout << "���������\n"<< res << endl;
	return 0;
}