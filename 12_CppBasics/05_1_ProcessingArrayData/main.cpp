#include <iostream>
#include <string>
#include<cmath>
using namespace std;



int main()
{
	system("chcp 1251");
	const int n = 10;
	int mas[n];
	for (int i = 0; i < n; i++)
	{
		cout << "mas[" << i << "]=";
		cin >> mas[i];
	}


	int s = 0;
	double mean = 0;
	int sum_negative = 0;
	int sum_positive = 0;
	int sum_odd = 0; 
	int sum_even = 0;


	int arr_element_max = mas[0];
	int arr_element_min = mas[0];
	int arr_index_max = 0;
	int arr_index_min = 0;
	

	for (int i = 0; i < n; i++)
	{
		s += mas[i];
	}
	mean = s / n;
	for (int i = 0; i < n; i++)
	{
		if (mas[i] < 0)
		{
			sum_negative += mas[i];
		}
		else
		{
			sum_positive += mas[i];
		}

		if (i % 2 == 0)
		{
			sum_odd += mas[i];
		}
		else
		{
			sum_even += mas[i];
		}
		s += mas[i];

		if (mas[i] > arr_element_max)
		{
			arr_element_max = mas[i];
			arr_index_max = i;
		}
		else if (mas[i] < arr_element_min)
		{
			arr_element_min = mas[i];
			arr_index_min = i;
		}
	}
	cout <<"����� = " << s << endl;
	cout << "������� �������� = " << mean << endl;
	cout << "����� ������������� ����� = " << sum_negative << endl;
	cout << "����� ������������� ����� = " << sum_positive << endl;
	cout << "����� ������ ����� = " << sum_even << endl;
	cout << "����� �������� ����� = " << sum_odd << endl;
	cout << " ����������� ������� ������� = " << arr_element_min << endl;
	cout << " ������ = " << arr_index_min << endl;
	cout << " ������������ ������� ������� = " << arr_element_max << endl;
	cout << " ������ = " << arr_index_max << endl;
	return 0;
}