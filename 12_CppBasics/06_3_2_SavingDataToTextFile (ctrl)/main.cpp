#include <iostream>
#include <fstream>

using namespace std;
int main()
{
	system("chcp 1251");
	const int N = 10;
	int a[N] = { 1, 25, 6, 32, 43, 5, 96, 23, 4, 55 };
	int min = 0;
	int buf = 0;
	std::ofstream fout("output.txt", std::ios::app);

	if (!fout)
	{
		std::cerr << "Запись невозможна" << std::endl;
	}

	for (int i : a)
	{
		fout << i << " ";
	}

	fout << "\n";



	for (int i = 0; i < N; i++)
	{
		min = i; 
		for (int j = i + 1; j < N; j++)
			min = (a[j] < a[min]) ? j : min;
		
		if (i != min)
		{
			buf = a[i];
			a[i] = a[min];
			a[min] = buf;
		}
	}
	for (int i : a) 
	{
		fout << i << " ";
	}
	fout.close();

	return 0;



}