#include "point.h"
#include <iostream>
#include <string>
#include <vector>
#include <algorithm> 

using std::vector;
using std::sort;
using std::cout;

int main()
{
	vector<Point> v;
	v.push_back(Point(1, 9));
	v.push_back(Point(1, 6));
	v.push_back(Point(5, 7));
	v.push_back(Point(4, 8));
	v.push_back(Point(22, 8));
	v.push_back(Point(5, 8));


	sort(v.begin(), v.end());

	for (auto& point : v)
		cout << point << '\n';

	return 0;
}