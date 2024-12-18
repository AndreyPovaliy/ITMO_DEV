#include <iostream>
#include<cmath>

using namespace std;
int main()
{
	system("chcp 1251");
	int x1,y1, x2, y2, x3, y3, x4, y4, x5, y5;
	cout << "Для расчета площади площади пятиугольника, введите координаты первой точки\n";
	cin >> x1;
	cin >> y1;
	cout << "также введите координаты второй точки\n";
	cin >> x2;
	cin >> y2;
	cout << "также введите координаты третьей точки\n";
	cin >> x3;
	cin >> y3;
	cout << "также введите координаты четвертой точки\n";
	cin >> x4;
	cin >> y4;
	cout << "также введите координаты пятой точки\n";
	cin >> x5;
	cin >> y5;
	int x = fabs(((x1 * y2) + (x2 * y3) + (x3 * y4) + (x4 * y5) + (x5 * y1)) - ((y1 * x2) + (y2 * x3) + (y3 * x4) + (y4 * x5) + (y5 * x1)));
	cout << " Площадь пятиугольника равна \n \t" << x << endl;

	return 0;
}