#include <iostream>
#include "Patient.h"
#include "Doctor.h"
#include "Interface.h"

using std::cin;
using std::cout;
using std::endl;




int main()


{
	system("chcp 1251");

	Interface newInter;

	Doctor d_1("Иван", "Иванов", 32, "Хирург");
	Doctor d_2("Александр", "Трофимов", 55, "Терапевт");
	Doctor d_3("Алексей", "Конев", 41, "Эндокринолог");
	
	Patient t_1("Михаил", "Козлов", 28, "Острый живот");
	Patient t_2("Олег", "Трошев", 60, "Гипертоническая болезнь");
	Patient t_3("Ирина", "Павлова", 78, "Сахарный диабет 2 типа");

	newInter.addPerson(&d_1);
	newInter.addPerson(&d_2);
	newInter.addPerson(&d_3);

	newInter.addPerson(&t_1);
	newInter.addPerson(&t_2);
	newInter.addPerson(&t_3);

	newInter.printConsole();

	
	newInter.printFile("output.txt");



}