#include <iostream>
#include <string>

using std::cout;
using std::cin;
using std::swap;

int enterArray(int , int* );
int transpositionSearch(int* f_a, int f_element, int f_size);

int main() {

    system("chcp 1251");
    const int n = 10;
    int mas[n];
    enterArray(n, mas);
    int number;
    int click;
    cout << "Введите число: ";
    cin >> number;
    cout << "Количество обращений: ";
    cin >> click;

    
    for (int i = 0; i < click; i++) {
        cout << "Число " << number << " помянялся индекс на" << transpositionSearch(mas, number, n) << ".\n";
    }

    return 0;
}

int transpositionSearch(int* f_a, int f_element, int f_size) {
    int f_index;

    for (int i = 0; i < f_size; i++) {
        if (f_a[i] == f_element) {
            f_index = i;

            if (f_index == 0) {
                break;
            }
            else {
                swap(f_a[i], f_a[i - 1]);
            }
        }
    }

    return f_index;
}

int enterArray(int n, int* arr) {

    for (int i = 0; i < n; i++)
    {
        cout << "arr[" << i << "]=";
        cin >> arr[i];
    }
    return 0;
}