#include <iostream>
#include <string>
using namespace std;


int m;
int n;

int addNumders(int n)
{
	if (n == 1) return 1; // выход из рекурсии
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
	cout << "Ведите первое число:\n" << endl;
	cin >> n;
	cout << "Ведите второе число:\n" << endl;
	cin >> m;
	res1 = addNumders(n);
	res2 = gcd(m, n);
	cout << "Результат алгоритма вычисления суммы чисел от 1 до любого целого положительного числа\n" << res1 << endl;
	cout << "Результат расчета Алгоритма Евклида\n" << res2 << endl;

}