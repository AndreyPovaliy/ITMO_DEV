#include "Doctor.h"
#include <iostream>
#include <fstream>

using  std::string;
using  std::ofstream;
using  std::cin;
using  std::cout;
using  std::endl;

Doctor::Doctor(const string& name, const string& surname, int age, const string& speciality)
    : Person(name, surname, age), speciality(speciality) {}

void Doctor::printDetails()
{
    cout << "Врач: " << name << " " << surname << ", Возраст: " << age << ", Специальность: " << speciality << endl;
}

