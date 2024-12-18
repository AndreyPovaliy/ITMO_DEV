#pragma once /* Защита от двойного подключения заголовочного файла */
#include <string>
#include "Student.h"
#include <list>
#include <algorithm>

using namespace std;

class Group
{
private:
	string name;
	list <Student> masSt;
	list <Student>::iterator iter;

public:
	int getSize();
	void addStudent(Student newStudent);
	void delStudent(Student oldStudent);
	Student findStudent(string, string);
	void GroupSort();
	void GroupOut();
	Group(string name);
	Group();

	void setName(string newName);
	string getName();

};