#include "Interface.h"
#include <vector>
#include <fstream>
#include <iostream>

using std::endl;
using std::ofstream;
using std::string;


	void Interface:: addPerson(Person* prsn) {
		people.push_back(prsn);
	}

	
	void Interface:: printConsole() {
		for (Person* ps : people)
		{
			ps->printDetails();
		}
	};

	

	void Interface:: printFile(string fileName) {
		ofstream fileOut;
		fileOut.open(fileName);
		for (Person* ps : people)
		{
			fileOut << ps->getName() << "," << ps->getSurName() << "," << ps->getAge() << std::endl;
		}
		fileOut.close();
	};


