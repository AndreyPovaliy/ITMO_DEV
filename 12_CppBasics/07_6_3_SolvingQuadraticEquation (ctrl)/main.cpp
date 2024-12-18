#include <iostream>
#include <tuple>
#include <math.h>

using std::cout;
using std::cin;
using std::endl;
using std::tuple;
using std::get;

tuple<double, double, int> MyRoot(double a, double b, double c);

int main()
{
    system("chcp 1251");
    double a;
    double b;
    double c;
    tuple<double, double, int> myRoots;

    cout << "Введите коэфициенты квадратного уравнения\n";
    cout << "a = ";
    cin >> a;
    cout << "b = ";
    cin >> b;
    cout << "c = ";
    cin >> c;

    myRoots = MyRoot(a, b, c);

    if (get<2>(myRoots) == -1)
    {
        cout << "Действительных корней не существует";
    }
    else if (get<2>(myRoots) == 0)
    {
        cout << "Один действительный корень= " << get<0>(myRoots);
    }
    else if (get<2>(myRoots) == 1)
    {
        cout << "Первый корень = " << get<0>(myRoots) << ", второй = " << get<1>(myRoots);
    }
    else
    {
        cout << "Ошибка";
    }

    return 0;
}

tuple<double, double, int> MyRoot(double a, double b, double c)
{
    double d;
    tuple<double, double, int> roots;
    d = b * b - 4 * a * c;

    if (d < 0)
    {
        get<2>(roots) = -1;
    }
    else if (d == 0)
    {
        get<2>(roots) = 0;
        get<0>(roots) = -b / (2 * a);
        get<1>(roots) = get<0>(roots);
    }
    else
    {
        get<2>(roots) = 1;
        get<0>(roots) = (-b + sqrt(d)) / (2 * a);
        get<1>(roots) = (-b - sqrt(d)) / (2 * a);
    }

    return roots;
}