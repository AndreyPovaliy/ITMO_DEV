#include <iostream>
#include<cmath>

using namespace std;


int main()
{
	system("chcp 1251");
	double x, y;
	cout << "������� ���������� ����� x\n";
	cin >> x;
	cout << "������� ���������� ����� y\n";
	cin >> y;

	if (x * x + y * y < 9 && y > 0)
	{
		cout << "\n������ " << endl;
	}
	else if (x * x + y * y > 9 || y < 0)
	{
		cout << "\nC������ " << endl;
	}
	else
	{
		cout << "\n�� ������� " << endl;
	}
	return 0;
}