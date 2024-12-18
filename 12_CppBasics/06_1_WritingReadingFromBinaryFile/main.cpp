#include <iostream>
#include <fstream>

using namespace std;
int main()
{
	system("chcp 1251");
	double sum = 0; // объ€вить переменную сумма
	int const n = 100; // объ€вить константу массива
	double nums[n]; // объ€вить сам массив
	 
	for (int i = 0; i < n; i++) // заполнить массив случайными числами
	{
		nums[i] = (rand() % 100);
	}

	ofstream out("test", ios::out | ios::binary); //создание объекта ofstream и св€зка его с определенным файлом "test"
	if (!out) {
		cout << "‘айл открыть невозможно\n";
		return 1;
	}

	out.write((char*)nums, sizeof(nums)); // запись потока указателем на буфер Ц (char*)nums,заданное число байтов sizeof(nums))

	out.close(); // закрыть поток

	ifstream in("test", ios::in | ios::binary); // открыти€ файла
	if (!in) {
		cout << "‘айл открыть невозможно";
		return 1;
	}
	in.read((char*)&nums, sizeof(nums));

	int k = sizeof(nums) / sizeof(double); // обработка полученных данных Ц подсчет суммы
	for (int i = 0; i < k; i++)
	{
		sum = sum + nums[i];
		cout << nums[i] << ' ';
	}
	cout << "\nsum = " << sum << endl;


	in.close(); // закрыть поток
}