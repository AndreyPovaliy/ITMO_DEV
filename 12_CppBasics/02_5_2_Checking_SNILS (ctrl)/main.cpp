#include <iostream>
#include <windows.h>
using std::cin;
using std::cout;
using std::size;

using namespace std;

int main()
{
    system("chcp 1251");
    // ���������� ������������ ���������� � �������
    int i,j;       
    int const n = 9;
    int snils[n];
    int sum = 0; 
    int nSum = 0;
    int ctrlNumber;
    int ctrlNumberCalcul;

    // ���������� ���������� ��� ��������
    bool check = false;

    for (i = 0; i < n; i++)
    {
        cout << "������� "<< i+1 << " ����� �����" << endl;
        cin >> snils[i]; 
    }

    cout << "������� ����������� �����" << endl;
    cin >> ctrlNumber;

    // ����� ������������ ��������� ��������
    for (i = 0, j =n ; i < n; i++, j--)
    {
        sum += snils[i] * j;
    }
   
    // ���������� ���������� ���������� �����
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
        
    cout <<"����������� ����� ������ ����:" << ctrlNumberCalcul << endl;


    // �������� ��������� ��������
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


    // ����� ���������� �����
    if (check == true) {
        cout << "�������� �����" << endl;
    }
    else cout << "���������� �����" << endl;

    return 0;
}