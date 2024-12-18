#include <iostream>
#include <Windows.h>
#include <string>

using namespace std;

class Distance
{
private:
	int feet;
	float inches;
public:
	class NegativeValueError
	{
	private:
		string msg;
	public:
		NegativeValueError() : msg("Отрицательное значение") { }
		void printMessage() const { cout << msg << endl; }
	};
	// конструктор по умолчанию
	Distance() : feet(0), inches(0.0) { }
	// конструктор с двумя параметрами
	Distance(int ft, float in) : feet(ft), inches(in) { }
	void getdist()
	{
		cout << "Введите число футов: ";
		cin >> feet;
		cout << "Введите число дюймов: ";
		cin >> inches;
	}
	void showdist()
	{
		cout << feet << "\'-" << inches << "\"\n";
	}
	Distance operator+ (const Distance&) const;
	Distance operator- (const Distance&) const;
	friend std::ostream& operator<< (std::ostream& out, const Distance& dist);
};

Distance Distance::operator+ (const Distance& d2) const
{
	int f = feet + d2.feet;
	float i = inches + d2.inches;
	if (i >= 12.0)
	{
		i -= 12.0;
		f++;
	}
	return Distance(f, i);
}

Distance Distance::operator- (const Distance& d2) const
{
	int f = feet - d2.feet;
	float i = inches - d2.inches;
	if (i < 0)
	{
		i += 12.0;
		f--;
	}
	if (f < 0)
		throw NegativeValueError();
	return Distance(f, i);
}

std::ostream& operator<< (std::ostream& out, const Distance& dist)
{
	out << dist.feet << "\'-" << dist.inches << "\"\n";
	return out;
}

int main()
{
	SetConsoleOutputCP(1251);
	SetConsoleCP(1251);
	Distance dist1, dist2, dist3, dist4;
	dist1.getdist();
	dist2.getdist();
	dist3 = dist1 + dist2;
	dist4 = dist1 + dist2 + dist3;
	cout << "Проверка перегруженного оператора сложения";
	cout << "\ndist1 = " << dist1;
	//dist1.showdist();
	cout << "\ndist2 = " << dist2;
	//dist2.showdist();
	cout << "\ndist3 = " << dist3;
	//dist3.showdist();
	cout << "\ndist4 = " << dist4;
	//dist4.showdist();
	Distance dist5, dist6, dist7;
	try
	{
		dist5 = dist4 - dist1;
		dist6 = dist5 - dist1;
		// dist7 = dist1 - dist4;
		cout << "\n" << "\nПроверка перегруженного оператора вычитания";
		cout << "\ndist5 = " << dist5;
		//dist5.showdist();
		cout << "\ndist6 = " << dist6;
		//dist6.showdist();
		/*
		cout << "\ndist7 = ";
		dist7.showdist();
		*/
	}
	catch (Distance::NegativeValueError& err)
	{
		err.printMessage();
	}
	return 0;
}