#include <iostream>
using namespace std;
int main()
{
	system("chcp 1251"); //lkz поддержки кириллицы в функцию main() добавлено указание кодовой страницы
	double a, b; 
	string name;
	cout << "Введите a и b:\n";
	cin >> a; // ввод с клавиатуры значения a
	cin >> name;
	cin >> b; // ввод с клавиатуры значения b
	double x = a / b; // вычисление значения x
	cout.precision(3); //обеспечение вывода числа с точностью до трех разрядов после запятой
	cout << "\nx = " << x << endl; //вывод результата на экран
	cout << "Привет, " << name << "!\n";
	cout << sizeof(a / b) << ends << sizeof(x) << endl; // расчет объема занимаемой памяти
	
	return 0;
}