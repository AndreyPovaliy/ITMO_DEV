#include <iostream>
#include <windows.h>
using namespace std;

class Distance { // класс английских мер длины
public:
	// конструктор без параметров
	Distance() : feet(0), inches(0.0), MTF(3.280833F) {
		cout << "\nконструктор по умолчанию\n";
	}

	// конструктор с одним параметром, переводящий метры в футы и дюймы 
	Distance(float meters) : MTF(3.280833F) {
		float fltfeet = MTF * meters;      // переводим в футы
		feet = int(fltfeet);				// берем число полных футов
		inches = 12 * (fltfeet - feet);		 // остаток - это дюймы
		cout << "\nконструктор с одним параметром\n";
	}

	// конструктор с двумя параметрами
	Distance(int ft, float in) : feet(ft), inches(in), MTF(3.280833F)
	{ }

	// получение информации от пользователя
	void getdist()
	{
		cout << "\nВведите футы: "; 
		cin >> feet;
		cout << "Введите дюймы: ";  
		cin >> inches;
	}

	// показ информации 
	void showdist() const {
		cout << feet << "\'-" << inches << '\"';
	}

	// оператор перевода для получения метров из футов
	Distance operator+ (Distance) const;

	/*explicit*/ operator float() const {
		float fracfeet = inches / 12;	// переводим дюймы в футы
		fracfeet += static_cast<float>(feet); // добавляем целые футы
		return fracfeet / MTF;	// переводим в метры
	}

	void operator= (Distance);

private:
	const float MTF;     // коэффициент перевода метров в футы
	int feet;
	float inches;

};

void Distance::operator= (Distance dist) {
	Distance::feet = dist.feet;
	Distance::inches = dist.inches;
}

Distance Distance::operator+ (Distance d2) const {
	int f = feet + d2.feet;	// складываем футы
	float i = inches + d2.inches; // складываем дюймы
	if (i >= 12.0)	// если дюймов стало больше 12
	{
		i -= 12.0;	// то уменьшаем дюймы на 12
		f++;	// и увеличиваем футы на 1
	}
	return Distance(f, i);      // создаем и возвращаем временную переменную
}

int main()
{
	SetConsoleOutputCP(1251);
	SetConsoleCP(1251);

	float mtrs;
	Distance dist1 = 2.35F; // используется конструктор, переводящий метры в футы и дюймы

	Distance dist101; // операция инициализации!!!
	cout << "\ndist101 = ";
	dist101.showdist();
	//dist101 = 2.22F;  // операция присваивания!!! требует перегрузки оператора присваивания, так как добавлена константа и ей новое значение присваивать нельзя

	cout << "\ndist1 = ";
	dist1.showdist();

	cout << "\ndist101 = ";
	dist101.showdist();
	mtrs = static_cast<float>(dist1); // используем оператор перевода в метры
	cout << "\ndist1 = " << mtrs << " meters\n";
	Distance dist2(5, 10.25); // используем конструктор с двумя параметрами

	mtrs = dist2; // неявно используем перевод типа 
	cout << "\ndist2 = " << mtrs << " meters\n";

	//dist2 = mtrs; 
	cout << "\ndist2 = " << mtrs << " meters\n";
	Distance dist11 = dist1 + dist2;

	Distance testDist;
	testDist = dist2;
	cout << "\ntestDist = " << static_cast<float>(testDist) << " meters\n";

	return 0;
}