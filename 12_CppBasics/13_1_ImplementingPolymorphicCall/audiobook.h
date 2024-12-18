#pragma once
#include <iostream>
#include "item.h"

class Audiobook : public Item {
public:
	void getdata();
	void putdata();
private:
	double time;
};