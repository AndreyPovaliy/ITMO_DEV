#include <iostream>
#include <windows.h>
using std::cin;
using std::cout;
using std::size;

using namespace std;

int const n = 9;
int i, j;
int sum = 0;
int snils[n];
int nSum = 0;
int ctrlNumber;
int ctrlNumberCalcul;

bool check = false;

void sumSnils(int snils[n])
{
    
 
    for (i = 0, j = n; i < n; i++, j--)
    {
        sum += snils[i] * j;
    }
}


int controlSnilsNum (int sum)
{
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

    cout << "����������� ����� ������ ����:" << ctrlNumberCalcul << endl;
    return ctrlNumberCalcul;
}

bool checklSnilsNum()
{
    for (i = 0; i < n; i++) {
        if (snils[i] == snils[i + 1]) {
            check = false;
            break;
        }
        else
            if (snils[0] / 10 >= 1) {
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
    return check;
}

int checklSnilsNum(bool check)
{
    if (check == true) {
        cout << "�������� �����" << endl;
    }
    else cout << "���������� �����" << endl;
    return 0;
}



int main()
{
    system("chcp 1251");
    // �������� ������   
    for (i = 0; i < n; i++)
    {
        cout << "������� " << i + 1 << " ����� �����" << endl;
        cin >> snils[i];
    }

    cout << "������� ����������� �����" << endl;
    cin >> ctrlNumber;

    // ����� ������������ ��������� ��������
    sumSnils(snils);

    // ���������� ���������� ���������� �����
    controlSnilsNum(sum);


    // �������� ��������� ��������
    checklSnilsNum();
    


    // ����� ���������� �����
    checklSnilsNum(check);

    return 0;
}