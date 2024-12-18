#include <iostream>
#include<cmath>



using std::cout;
using std::cin;
using std::endl;




long long covretToBinary(int);



int main()
{
	system("chcp 1251");
	int n;
	cout << "¬ведите целое положительное число: \n";
	cin >> n;
	cout << "ƒвоичное число рано: \n" << covretToBinary(n) << endl;

}


long long covretToBinary(int n)
{
	long long binaryNunber = 0;
	int remainder, i = 1, step = 1;

	while (n != 0)
	{
		remainder = n % 2;
		n /= 2;
		step++;
		binaryNunber += remainder * i;
		i *= 10;
	}
	return binaryNunber;
}