#include <iostream>
#include <string>
using namespace std;
int main()
{
	string name;
	cout << "What is your name? ";
	//cin >> name; выводится только 1 слово
	getline(cin, name);
	cout << "Hello, " << name << "!\n";
}