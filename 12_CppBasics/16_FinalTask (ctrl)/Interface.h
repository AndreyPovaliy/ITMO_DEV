#pragma once
#include "Person.h"
#include <vector>
#include <fstream>
#include <iostream>

using std::endl;
using std::ofstream;
using std::string;
using std::vector;

class Interface {

private:
	vector<Person*> people;

public:


	void addPerson(Person* ps);
	void printConsole();
	void printFile(string fileName);
};