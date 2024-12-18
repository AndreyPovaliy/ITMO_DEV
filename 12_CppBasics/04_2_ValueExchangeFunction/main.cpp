#include <iostream>
#include <string>
using namespace std;

void swap(int*, int*);
void swap(int&, int&);

int main()
{
	double res1;
	double res2;
	int x = 5, y = 10;
	swap(&x, &y);
	swap(x, y);
	return 0;
}


void swap(int* x, int* y)
{
	int temp;
	temp = *x;
	*x = *y;
	*y = temp;
}
void swap(int& x, int& y)
{
	int temp;
	temp = x;
	x = y;
	y = temp;
}