#include <iostream>

using namespace std;

int main()
{
	int N;
	cout << "Enter the number of items in array: "; cin >> N;
	int* a = new int[N];
	for (int i = 0; i < N; i++)
	{
		cout << "Value for myArray[" << i << "]: ";
		cin >> a[i];
	}
	int min = 0;
	int buf = 0;
	for (int i = 0; i < N; i++)
	{
		min = i;
		for (int j = i + 1; j < N; j++)
		{
			min = (a[j] < a[min]) ? j : min;
		}
		if (i != min)
		{
			buf = a[i];
			a[i] = a[min];
			a[min] = buf;
		}
	}
	for (int i = 0; i < N; i++)
	{
		cout << a[i] << '\t';
	}
	delete[]a;
	return 0;
}