#include <iostream>
#include <Windows.h>
#include <string>

using namespace std;

class Distance
{
private:
	int feet;
	float inches;
	const float MTF;
public:
	class NegativeValueError
	{
	private:
		string msg;
	public:
		NegativeValueError() : msg("Отрицательая величина") { }
		void printMessage() const { cout << msg << endl; }
	};
	// конструктор по умолчанию
	Distance() : feet(0), inches(0.0), MTF(3.280833F) { }
	// конструктор с двумя параметрами
	Distance(int ft, float in) : feet(ft), inches(in), MTF(3.280833F) { }
	void getdist()
	{
		cout << "Введите число футов : ";
		cin >> feet;
		cout << "Введите число дюймов : ";
		cin >> inches;
	}
	void showdist()
	{
		cout << feet << "\'-" << inches << "\"\n";
	}
	Distance(float meters) : MTF(3.280833F)
	{
		float fltfeet = MTF * meters; //преобразование в футы
		feet = int(fltfeet); //целое число футов
		inches = 12 * (fltfeet - feet); // остаток от футов равен дюймам
	}
	operator float() const
	{
		float fracfeet = inches / 12;
		fracfeet += static_cast<float>(feet);
		return fracfeet / MTF;
	}
	friend std::ostream& operator<< (std::ostream& out, const Distance& dist);
	Distance operator+(const float&) const;
	float operator+(const Distance&) const;
	Distance operator-(const float&) const;
	float operator-(const Distance&) const;
};

std::ostream& operator<< (std::ostream& out, const Distance& dist)
{
	out << dist.feet << "\'-" << dist.inches << "\"\n";
	return out;
}

Distance Distance::operator+(const float& d2) const
{
	Distance dist2 = d2;
	int f = feet + dist2.feet;
	float i = inches + dist2.inches;
	if (i >= 12.0)
	{
		i -= 12.0;
		f++;
	}
	return Distance(f, i);
}

float Distance::operator+(const Distance& d2) const
{
	float d1 = (inches / 12 + static_cast<float>(feet)) / MTF;
	return d1 + d2;
}

Distance Distance::operator-(const float& d2) const
{
	Distance dist2 = d2;
	int f = feet - dist2.feet;
	float i = inches - dist2.inches;
	if (i < 0)
	{
		i += 12.0;
		f--;
	}
	if (f < 0)
		throw NegativeValueError();
	return Distance(f, i);
}

float Distance::operator-(const Distance& d2) const
{
	float d1 = (inches / 12 + static_cast<float>(feet)) / MTF;
	float res = d1 - d2;
	if (res < 0)
		throw NegativeValueError();
	return res;
}

int main()
{
	SetConsoleOutputCP(1251);
	SetConsoleCP(1251);
	Distance dist1 = 2.35F;
	Distance dist2;
	dist2.getdist();
	float mtrs;
	mtrs = static_cast<float>(dist1);
	cout << "Значение в метрах (явное преобразование) dist1: " << mtrs << endl;
	mtrs = dist2;
	cout << "Значение в футах и дюймах dist1: " << dist1 << endl;
	cout << "Значение в метрах (неявное преобразование) dist2:  " << mtrs << endl;

	float mtrs3 = dist1 + 2.8F;
	Distance dist3 = mtrs3;
	float mtrs4 = 2.8F + dist2;
	Distance dist4 = mtrs4;
	cout << "Операции сложения" << endl;
	cout << "Значение в футах и дюймах dist3 = dist1 + 2.8F = " << dist3 << endl;
	cout << "Значение в футах и дюймах dist4 = 2.8F + dist3 = " << dist4 << endl;
	cout << "Значение в метрах dist4: " << mtrs4 << endl;
	float mtrs5 = dist4 - 1.5F;
	Distance dist5 = mtrs5;
	float mtrs6 = 12.5F - dist5;
	Distance dist6 = mtrs6;
	cout << "Операции вычитания" << endl;
	cout << "Значение в футах и дюймах dist5 = dist4 - 1.5F = " << dist5 << endl;
	cout << "Значение в футах и дюймах dist6 = 12.5F - dist5 = " << dist6 << endl;
	cout << "Значение в метрах dist6: " << mtrs6 << endl;
	return 0;
}