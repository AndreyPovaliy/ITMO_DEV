#include <iostream>
#include <fstream>


using namespace std;
int main()
{
    system("chcp 1251");
    const int size = 256;
    char str[size];

    cout << "������� �����. ������ '/' ����� ����� ��������� ���� ������." << std::endl;
    cin.getline(str, size, '/');     

        ofstream fout("output.txt");
        if (!fout) {
            cout << "���� �������� ����������\n";
            return 1;
        }

        fout << str;

        fout.close();
        return 0;
    

}