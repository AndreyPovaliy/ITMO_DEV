#include <iostream>
#include <string>
using namespace std;


int m;
int n;

int addNumders(int n)
{
	if (n == 1) return 1; // ����� �� ��������
	else return (n + addNumders(n - 1));
}


int gcd(int m, int n)
{
	if (n == 0) return m;
	return gcd(n, m % n);
}

int main()
{
	system("chcp 1251");
	double res1;
	double res2;
	cout << "������ ������ �����:\n" << endl;
	cin >> n;
	cout << "������ ������ �����:\n" << endl;
	cin >> m;
	res1 = addNumders(n);
	res2 = gcd(m, n);
	cout << "��������� ��������� ���������� ����� ����� �� 1 �� ������ ������ �������������� �����\n" << res1 << endl;
	cout << "��������� ������� ��������� �������\n" << res2 << endl;

}