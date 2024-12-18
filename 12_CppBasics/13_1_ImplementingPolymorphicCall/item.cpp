#include "item.h"

void Item::getdata() {
	std::cout << "\nВведите заголовок : ";
	std::cin >> title;
	std::cout << "Введите цену : ";
	std::cin >> price;
}

void Item::putdata() {
	std::cout << "\nЗаголовок: " << title;
	std::cout << "\nЦена: " << price;
}