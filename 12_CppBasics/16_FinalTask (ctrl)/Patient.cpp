#include "Patient.h"
#include <iostream>
#include <fstream>

using  std::string;
using  std::cout;
using  std::endl;

Patient::Patient(const string& name, const string& surname, int age, const string& diagnosis)
    : Person(name, surname, age), diagnosis(diagnosis) {}

void Patient::printDetails()
{
   
    cout << "Пациент: "<< name << " " << surname << ", Возраст: " << age << ", Диагноз: " << diagnosis << endl;
}