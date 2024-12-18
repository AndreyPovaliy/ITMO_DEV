#pragma once
#include <iostream>
#include <string>

class Item {
public:
	virtual void getdata();
	virtual void putdata();
private:
	std::string title;
	double price;
};