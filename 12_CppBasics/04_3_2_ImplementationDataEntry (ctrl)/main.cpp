#include <iostream>
#include<cmath>



using std::cout;
using std::cin;
using std::endl;
using std::cerr;



bool Input(int&, int&);
bool isPrime(int);



int main()
{
	system("chcp 1251");

	int a, b;
	
	if (Input(a, b) == false) // if(!Input(a,b))
	{
		cerr << "error";
		return 1;
	}
	int s = a + b;
	return 0;
}

bool Input(int& a, int& b) {

	bool check = false;

	cout << "Введите первое суперпростое число: ";
	cin >> a;
	cout << "Введите второе суперпростое число: ";
	cin >> b;

	if (isPrime(a) == true && isPrime(b) == true) {
		check = true;
	} else check = false;


	return check;

}


bool isPrime(int a) {
	bool isPrime = false;
	for (int i = 2; i < a; i++)
	{
		if (a % i == 0)
			isPrime = false;
		else
			isPrime = true;
		break;
	}
	return isPrime;


}