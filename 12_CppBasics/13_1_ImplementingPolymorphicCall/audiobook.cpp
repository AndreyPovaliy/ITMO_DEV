#include "audiobook.h"

void Audiobook::getdata() {
	Item::getdata();
	std::cout << "Введите время звучания: ";
	std::cin >> time;
}

void Audiobook::putdata() {
	Item::putdata();
	std::cout << "\nВремя звучания : " << time;
}