// main.cpp
#include <iostream>
#include <vector>
#include "human.h"
#include "student.h"



int main()
{
	system("chcp 1251");
	// Оценкистудента
	std::vector<int> scores;
	// Добавление оценок студента в вектор
	scores.push_back(5);
	scores.push_back(3);
	scores.push_back(4);
	scores.push_back(4);
	scores.push_back(5);
	scores.push_back(3);
	scores.push_back(3);
	scores.push_back(3);
	scores.push_back(3);

	student* stud = new student ("Петров", "Иван", "Алексеевич", scores);

	std::cout << stud->get_full_name() << std::endl;

	std::cout << "Средний балл : " << stud->get_average_score() << std::endl;
	return 0;
}