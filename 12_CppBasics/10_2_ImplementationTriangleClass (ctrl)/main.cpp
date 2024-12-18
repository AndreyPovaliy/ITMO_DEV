#include <iostream>
#include "Dot.h"
#include "Triangle.h"

using std::cout;
using std::cin;
using std::endl;

int main()
{
    system("chcp 1251");
    double x1;
    double y1;
    double x2;
    double y2;
    double x3;
    double y3;

    cout << "Введите координаты первой точки:\n";
    cout << "x = ";
    cin >> x1;
    cout << "y = ";
    cin >> y1;

    cout << "\nВведите координаты второй точки:\n";
    cout << "x = ";
    cin >> x2;
    cout << "y = ";
    cin >> y2;

    cout << "\nВведите координаты третьей точки:\n";
    cout << "x = ";
    cin >> x3;
    cout << "y = ";
    cin >> y3;

    Dot* firstDot = new Dot(x1, y1);
    Dot* secondDot = new Dot(x2, y2);
    Triangle* myTriangle = new Triangle(firstDot, secondDot, x3, y3);

    cout << "\nСтороны треугольника\n";
    myTriangle->printSides();
    cout << "Периметр: " << myTriangle->getPerimeter() << endl;
    cout << "Площадь: " << myTriangle->getArea() << endl;
    delete myTriangle;

    
    delete firstDot;
    delete secondDot;

    return 0;
}