#include <iostream>
using namespace std;
int main()
{
	system("chcp 1251"); //lkz ��������� ��������� � ������� main() ��������� �������� ������� ��������
	double a, b; 
	string name;
	cout << "������� a � b:\n";
	cin >> a; // ���� � ���������� �������� a
	cin >> name;
	cin >> b; // ���� � ���������� �������� b
	double x = a / b; // ���������� �������� x
	cout.precision(3); //����������� ������ ����� � ��������� �� ���� �������� ����� �������
	cout << "\nx = " << x << endl; //����� ���������� �� �����
	cout << "������, " << name << "!\n";
	cout << sizeof(a / b) << ends << sizeof(x) << endl; // ������ ������ ���������� ������
	
	return 0;
}