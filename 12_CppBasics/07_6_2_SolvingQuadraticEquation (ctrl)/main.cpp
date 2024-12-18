#include <iostream>
#include <math.h>

using std::cout;
using std::cin;
using std::endl;

struct Roots
{
    double root1;
    double root2;
};

Roots MyRoot(double a, double b, double c);

int main()
{
    system("chcp 1251");
    double a;
    double b;
    double c;
    Roots myRoots;

    cout << "Введите коэфициенты квадратного уравнения\n";
    cout << "a = ";
    cin >> a;
    cout << "b = ";
    cin >> b;
    cout << "c = ";
    cin >> c;

    myRoots = MyRoot(a, b, c);

    cout << "Первый корень: " << myRoots.root1 << endl;
    cout << "Второй корень: " << myRoots.root2 << endl;

    return 0;
}

Roots MyRoot(double a, double b, double c)
{
    double d;
    Roots roots;
    roots.root1 = 0;
    roots.root2 = 0;

    d = b * b - 4 * a * c;

    if (d < 0)
    {
        cout << "Действительных корней не существует" << endl;
    }
    else if (d == 0)
    {
        roots.root1 = -b / (2 * a);
        roots.root1 = roots.root2;
    }
    else
    {
        roots.root1 = ((-b) + sqrt(d)) / (2 * a);
        roots.root2 = ((-b) - sqrt(d)) / (2 * a);
    }

    return roots;
}