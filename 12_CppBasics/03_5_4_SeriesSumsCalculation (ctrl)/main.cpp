#include <iostream>
#include<cmath>



using std::cout;
using std::cin;
using std::endl;




int seriesSums(int);



int main()
{
	system("chcp 1251");
	int n;
	cout << "������� ����� ������������� �����: \n";
	cin >> n;

	cout << "����� ���� �����: \n" << seriesSums(n)<< endl;

	return 0;

}

int seriesSums(int n) {
	if (n != 0)
		return 5 * n + seriesSums(n - 1);
	return 0;
}