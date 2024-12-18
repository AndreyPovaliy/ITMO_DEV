#include <iostream>
#include <string>
using namespace std;



class Student {
public:
	class ExScore {    //класс исключений
	public:
		string origin; //для имени функции
		int iValue;    //для хранения ошибочного значения

		ExScore(string orr, int sc) {
			origin = orr; //строка с именем виновника ошибки
			iValue = sc; //сохраненное неправильное значение 
		}
	};

	// Установка имени студента
	void set_name(string student_name) {
		name = student_name;
	}
	// Получение имени студента
	string get_name() {
		return name;
	}
	// Установка фамилии студента
	void set_last_name(string student_last_name) {
		last_name = student_last_name;
	}
	// Получение фамилии студента
	string get_last_name() {
		return last_name;
	}
	// Установка промежуточных оценок
	void set_scores(int student_scores[]) {
		for (int i = 0; i < 5; ++i) {
			if (student_scores[i] > 5)
				throw ExScore("in function set_scores()",
					student_scores[i]);
			scores[i] = student_scores[i];
		}
	}
	// Установка среднего балла
	void set_average_score(double ball) {
		average_score = ball;
	}
	// Получение среднего балла
	double get_average_score() {
		return average_score;
	}

private:
	int scores[5]; // Промежуточные оценки
	double average_score; // Средний балл
	string name; // Имя
	string last_name; // Фамилия
};