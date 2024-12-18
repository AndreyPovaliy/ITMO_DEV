#include <iostream>
#include <string>
#include <vector>

using std::cout;
using std::endl;

class A {
public:
    A(int len) : length(len) {
        arr = new int[len];
        for (int i = 0; i < len; i++) {
            arr[i] = i;
        }
    }
    A() : arr(nullptr), length(0)
    {}
    ~A() {
        delete arr;
    }
    int size() const {
        return length;
    }
    int& operator[](int idx) const {
        if (idx < 0 || idx >= length) {
            cout << "Массив вне диапазона\n" << endl;
            exit(1);
        }
        return arr[idx];
    }
private:
    int* arr;
    int length;
};

int main()

{
    system("chcp 1251");
    A a1;
    A a2(10);
    A a3 = a2;
    a1 = a3;
    a2 = A(20);
    const A a4(5);
    for (int i = 0; i < a2.size(); i++)
    {
        cout << a4[i];
    }
}