#include <iostream>
#include<cmath>

using namespace std;


int main()
{
	system("chcp 1251");
	double x, y;
	int attempts = 10;
	int score = 0;

	//расчет нахождения точки в заданном круге, x2+y2=r2 
	for (int i = 0; i < attempts; i++) {
		cout << "Введите X координату "<< i+1 << " точки\n";
		cin >> x;
		cout << "Введите Y координату "<< i+1 <<" точки\n";
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
	//определение уровня мастерства
	if (score <50 )
	{
		cout << "Вы новичок\n" << endl;
	}
	else if (score > 50&& score < 80)
	{
		cout << "Вы стрелок\n" << endl;
	}
	else
	{
		cout << "Вы снайпер\n" << endl;
	}

	//вывод результата
	cout << "Ваш результат:\n"<< score<<endl;
	return 0;
}