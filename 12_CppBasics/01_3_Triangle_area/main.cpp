#include <iostream>
#include<cmath>

using namespace std;
int main()
{
	system("chcp 1251");
	double a, p; 
	cout << "��� ������� ������� ��������������� ������������, ������� ������ �������\n";
	cin >> a;
	p=a*3;
	double x = sqrt(p/2*(p / 2-a) * (p / 2 - a) * (p / 2 - a));
	cout << "\t������� "<<"\t" << "������� \n \t" << a << " \t\t" << x << endl;
	
	return 0;
}