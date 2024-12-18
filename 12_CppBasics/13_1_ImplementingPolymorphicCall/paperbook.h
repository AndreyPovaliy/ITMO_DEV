#pragma once
#include <iostream>
#include "item.h"

class Paperbook : public Item {
public:
	void getdata();
	void putdata();
private:
	int pages;
};