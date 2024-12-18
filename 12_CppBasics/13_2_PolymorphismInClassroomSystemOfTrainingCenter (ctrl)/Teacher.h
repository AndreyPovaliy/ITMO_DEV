#pragma once
#include "human.h"
#include <string>


using std::cout;
using std::endl;
using std::string;



class Teacher : public Human {
public:
	Teacher(
		string last_name,
		string name,
		string second_name,
		unsigned int work_time
	) : Human(
		last_name,
		name,
		second_name
	) {
		this->work_time = work_time;
	}

	unsigned int get_work_time()
	{
		return this->work_time;
	}

	void print()
	{
		Human::print();
		cout << "\nРабочие часы: " << Teacher::get_work_time() << endl;
	}
private:
	unsigned int work_time;
};