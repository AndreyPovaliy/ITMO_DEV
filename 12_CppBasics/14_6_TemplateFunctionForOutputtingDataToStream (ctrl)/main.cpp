#include <iostream>
#include <vector>



using std::string;
using std::vector;
using std::cout;
using std::endl;

template<class T>
void print(const T&, string);

int main() {
	vector<int> data = { 1, 2, 3 };
	print(data, ", "); // на экране: 1, 2, 3
}

template<class T>
void print(const T& data, string delimiter) {
	for (const auto& item : data) {
		if (item != *data.begin()) {
			cout << delimiter;
		}
		cout << item;
	}
	cout << endl;
}