#pragma once
#include "Person.h"

using  std::string;

class Patient : public Person
{
private:
	string diagnosis;


public:
	Patient(const string& name, const string& surname, int age, const string& diagnosis);

	void printDetails() override;
};