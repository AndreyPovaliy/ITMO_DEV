#include <iostream>
using namespace std;

int main()
{
    system("chcp 1251");
	int n;
    bool isPrime;
    isPrime = true;

	cout << "������� �����:\n";
	cin >> n;
    for (int i = 2; i < n; i++)
    {
        if (n % i == 0)
            isPrime = false;
        else
            isPrime = true;
        break;
    }

    if (isPrime== true)
        cout << "������������ �����\n";
    else 
        cout << "�� ������������ �����\n";
    return 0;
}