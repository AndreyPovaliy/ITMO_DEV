#include <iostream>

using namespace std;

int main()
{
	system("chcp 1251");
	int coin10 = 0;
	int coin5 = 0;
	int coin2 = 0;
	int coin1 = 0;
	int total;
	cout << "������� ����� ����� ��� �������: "; 
	
	cin >> total;
	while (total >= 10)
	{
		total -= 10;
		coin10++;
	}
	while (total >= 5)
	{
		total -= 5;
		coin5++;
	}
	while (total >= 2)
	{
		total -= 2;
		coin2++;
	}
	while (total >= 1)
	{
		total -= 1;
		coin1++;
	}
	cout << "\t������\t\t����������\n";
	cout << "\t" << "������� 10" << "\t" << coin10 << endl;
	cout << "\t" << "������� 5" << "\t" << coin5 << endl;
	cout << "\t" << "������� 2  " << "\t" << coin2 << endl;
	cout << "\t" << "������� 1  " << "\t" << coin1 << endl;
	return 0;
}