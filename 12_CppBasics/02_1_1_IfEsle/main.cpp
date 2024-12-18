#include <iostream>
#include<cmath>

using namespace std;


int main()
{
	system("chcp 1251");
	double x, y;
	cout << "Введите координату точки x\n";
	cin >> x;
	cout << "Введите координату точки y\n";
	cin >> y;

	if (x * x + y * y < 9 && y > 0)
	{
		cout << "\nВнутри " << endl;
	}
	else if (x * x + y * y > 9 || y < 0)
	{
		cout << "\nCнаружи " << endl;
	}
	else
	{
		cout << "\nНа границе " << endl;
	}
	return 0;
}