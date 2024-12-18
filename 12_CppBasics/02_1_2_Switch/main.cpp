#include <iostream>
#include<cmath>

using namespace std;
int main()
{
	system("chcp 1251");
	char op;
	cout << "Сделай свой выбор, собери авто свой мечты: ";
	cin >> op;

	switch (op)
	{
	case 'V':
		cout << "Кондиционер хочу\n";

	case 'S':
		cout << "Радио играть должно\n";
	default:
		cout << "Колеса круглые\n";
		cout << "Мощный двигатель\n";
	}
	return 0;
}