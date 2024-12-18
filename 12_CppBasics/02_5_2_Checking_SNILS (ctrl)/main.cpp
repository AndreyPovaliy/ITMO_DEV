#include <iostream>
#include <windows.h>
using std::cin;
using std::cout;
using std::size;

using namespace std;

int main()
{
    system("chcp 1251");
    // объявление используемых переменных и массива
    int i,j;       
    int const n = 9;
    int snils[n];
    int sum = 0; 
    int nSum = 0;
    int ctrlNumber;
    int ctrlNumberCalcul;

    // логической переменной для проверки
    bool check = false;

    for (i = 0; i < n; i++)
    {
        cout << "Введите "<< i+1 << " номер СНИЛС" << endl;
        cin >> snils[i]; 
    }

    cout << "Введите контрольное число" << endl;
    cin >> ctrlNumber;

    // сумма произведений введенных значений
    for (i = 0, j =n ; i < n; i++, j--)
    {
        sum += snils[i] * j;
    }
   
    // вычисление расчетного контрольго числа
    if (sum < 100) {
        ctrlNumberCalcul = sum;
    }
    else
        if (sum == 100 || sum == 101) {
            ctrlNumberCalcul = 00;

        }
        else
            nSum = sum % 101;

    if (nSum < 100) {
        ctrlNumberCalcul = nSum;
    }
    else
        if (nSum == 100 || nSum == 101) {
            ctrlNumberCalcul = 00;
        }
        
    cout <<"Контрольное число должно быть:" << ctrlNumberCalcul << endl;


    // проверка введенных значений
    for (i = 0; i < n; i++) {
        if (snils[i] == snils[i + 1]) {
            check = false;
            break;
        }
        else 
            if (snils[0] / 10 >=1) {
                check = false;
                break;
            }
            else
                if (ctrlNumber != ctrlNumberCalcul) {
                    check = false;
                    break;
                }
            else check = true;

    }


    // вывод валидности СНИЛС
    if (check == true) {
        cout << "Валидный снилс" << endl;
    }
    else cout << "Невалидный снилс" << endl;

    return 0;
}