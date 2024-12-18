#include <iostream>
#include <Windows.h>
#include <string>
#include <tuple>
#include <vector>

using namespace std;
using Tuple = tuple<string, int, double>;
void printTupleOfThree(Tuple t);


int main()
{
	SetConsoleOutputCP(1251);
	SetConsoleCP(1251);
	Tuple funtup(string, int, double);
	vector<string> v1 = { "one", "two", "three", "four", "five", "six" };
	vector<int> v2 = { 1, 2, 3, 4, 5, 6 };
	vector<double> v3 = { 1.1, 2.2, 3.3, 4.4, 5.5, 6.6 };

	auto t0 = make_tuple(v1[0], v2[0], v3[0]);
	printTupleOfThree(t0);
	auto t1 = funtup(v1[1], v2[1], v3[1]);
	printTupleOfThree(t1);
	return 0;
}

void printTupleOfThree(tuple<string, int, double> t)
{
	cout << "("
		<< std::get<0>(t) << ", "
		<< std::get<1>(t) << ", "
		<< std::get<2>(t) << ")" << endl;
}

Tuple funtup(string s, int a, double d)
{
	s.append("!");
	return make_tuple(s, a, d * 10);
}