#include <iostream>
#include <string>
using namespace std;




string privet(string name)
{

	string str = name + ", " + "hello!\n";
	return str;
}

void privet(string name, int k)
{
	cout << name << ", " << "hello! " << "you input " << k << endl;
}

int main()
{
	string name;
	int k;
	cout << "What is your name?" << endl;
	cin >> name;
	cout << "Input number:" << endl;
	cin >> k;
	string nameOut = privet(name);
	cout << nameOut << endl;
	privet(name, k);
	return 0;
}