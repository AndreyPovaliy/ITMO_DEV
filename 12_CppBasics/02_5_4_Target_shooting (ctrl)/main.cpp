#include <iostream>
#include<cmath>

using namespace std;


int main()
{
	system("chcp 1251");
	double x, y;
	int attempts = 10;
	int score = 0;

	//������ ���������� ����� � �������� �����, x2+y2=r2 
	for (int i = 0; i < attempts; i++) {
		cout << "������� X ���������� "<< i+1 << " �����\n";
		cin >> x;
		cout << "������� Y ���������� "<< i+1 <<" �����\n";
		cin >> y;

		if (x * x + y * y <= 1)
		{
			score += 10;
		}
		else if (x * x + y * y <= 4)
		{
			score += 5;
		}
		else
		{
			score += 0;
		}

	}
	//����������� ������ ����������
	if (score <50 )
	{
		cout << "�� �������\n" << endl;
	}
	else if (score > 50&& score < 80)
	{
		cout << "�� �������\n" << endl;
	}
	else
	{
		cout << "�� �������\n" << endl;
	}

	//����� ����������
	cout << "��� ���������:\n"<< score<<endl;
	return 0;
}