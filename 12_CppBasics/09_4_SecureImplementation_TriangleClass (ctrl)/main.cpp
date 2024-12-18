#include <iostream>
#include <string>
#include "triangle.h"

using std::cout;
using std::cin;


int main()
{
    system("chcp 1251");
    double a, b, c;
    double area;
    Triangle myTriangle;

    cout << "������� ����� ������ ������������\n";
    cout << "A = ";
    cin >> a;
    cout << "B = ";
    cin >> b;
    cout << "C = ";
    cin >> c;

    try
    {
        myTriangle = Triangle(a, b, c);
    }
    catch (Triangle::WrongSideOfTriangle& ex)
    {
        cout << "\n������: ";
        ex.printMessage();
        return 1;
    }

    area = myTriangle.getArea();
    cout << "\n������� ������������ ����� " << area;

    return 0;
}