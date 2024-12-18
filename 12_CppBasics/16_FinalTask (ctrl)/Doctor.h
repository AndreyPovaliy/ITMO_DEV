#pragma once
#include "Person.h"

using  std::string;

class Doctor : public Person
{
private:
	string speciality;


public:
	Doctor(const string& name, const string& surname, int age, const string& speciality);

	void printDetails() override;

	
};
