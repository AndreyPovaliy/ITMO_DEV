#include <iostream>
#include <string>
using namespace std;
int main()
{
	string name;
	cout << "What is your name? ";
	//cin >> name; ��������� ������ 1 �����
	getline(cin, name);
	cout << "Hello, " << name << "!\n";
}