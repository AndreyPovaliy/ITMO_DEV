#include <iostream>
#include <string>

using namespace std;


int* max_vect(int, const int*,  const int*);

int main()
{
	system("chcp 1251");


	int a[] = { 1,2,3,4,5,6,7,2 };
	int b[] = { 7,6,5,4,3,2,1,3 };
	int kc = sizeof(a) / sizeof(a[0]); //���������� ��������� �������
	int* c; //��������� �� �������������� ������
	c = max_vect(kc, a, b); //����� ������� ��� �������� �������
	for (int i = 0; i < kc; i++) //����� ����������.
		cout << c[i] << " ";
	cout << endl;
	delete[]c; //������� ������.
}


int* max_vect(int n, const int* arr1, const int* arr2) {
	int* maxArr = new int[n];

	for (int i = 0; i < n; i++)
	{
		if (arr1[i] > arr2[i])
		{
			maxArr[i] = arr1[i];
		}
		else
		{
			maxArr[i] = arr2[i];
		}
	}

	return maxArr;


}