#include <iostream>



using std::cout;
using std::endl;


template<class T>
double getAverage(T&, int);

int main() {
    int arrInt[] = { 1, 1, 2, 3, 4, 5 };
    long arrLong[] = { 1000, 500, 5 };
    double arrDouble[] = { 2.3, 4.5, 5.1 };
    char arrChar[] = "Template";

    int sizeInt = sizeof(arrInt) / sizeof(arrInt[0]);
    int sizeLong = sizeof(arrLong) / sizeof(arrLong[0]);
    int sizeDouble = sizeof(arrDouble) / sizeof(arrDouble[0]);
    int sizeChar = sizeof(arrChar) / sizeof(arrChar[0]);

    cout << getAverage(arrInt, sizeInt) << endl;
    cout << getAverage(arrLong, sizeLong) << endl;
    cout << getAverage(arrDouble, sizeDouble) << endl;
    cout << getAverage(arrChar, sizeChar) << endl;
}

template<class T>
double getAverage(T& arr, int size) {
    double sum = 0;
    for (int i = 0; i < size; i++) {
        sum += arr[i];
    }
    return sum / size;
}