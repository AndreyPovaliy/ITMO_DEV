#include <iostream>
#include<cmath>

using namespace std;
int main()
{
	system("chcp 1251");
	char op;
	cout << "������ ���� �����, ������ ���� ���� �����: ";
	cin >> op;

	switch (op)
	{
	case 'V':
		cout << "����������� ����\n";

	case 'S':
		cout << "����� ������ ������\n";
	default:
		cout << "������ �������\n";
		cout << "������ ���������\n";
	}
	return 0;
}