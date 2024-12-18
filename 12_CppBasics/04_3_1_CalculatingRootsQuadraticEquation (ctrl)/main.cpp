#include <iostream>
#include<cmath>



using std::cout;
using std::cin;
using std::endl;




int Myroot(double, double, double, double&, double&);


int main()
{
	system("chcp 1251");

    double a, b, c, r1,r2; 

    cout << "¬ведите a\n"; 
    cin >> a;
    cout << "¬ведите b\n";
    cin >> b;
    cout << "¬ведите c\n";
    cin >> c;

    Myroot (a, b, c, r1, r2);
    return 0;

    
}


int Myroot(double a, double b, double c, double& x1, double& x2)
{
    

    double d; 

    d = b * b - 4 * a * c; 
    if (d > 0) 
    {
        x1 = ((-b) + sqrt(d)) / (2 * a);
        x2 = ((-b) - sqrt(d)) / (2 * a);
        cout << "x1 = " << x1 << "\n";
        cout << "x2 = " << x2 << "\n";
    }
    if (d == 0) 
    {
        x1 = -(b / (2 * a));
        cout << "x1 = x2 = " << x1 << "\n";
    }
    if (d < 0) 
        cout << "D < 0, ƒействительных корней уравнени€ не существует";
    return 0;
}