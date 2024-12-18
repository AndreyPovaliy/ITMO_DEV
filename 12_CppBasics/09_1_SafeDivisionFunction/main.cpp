#include <iostream> 
#include <string>


using namespace std;

class DivideByZeroError {
public:
    DivideByZeroError() : message("Деление на нуль") { }
    void printMessage() const { cout << message << endl; }
private:
    string message;
};

float quotient(int, int);

int main() {
    system("chcp 1251");

    int number1, number2;
    cout << "Введите два целых числа для расчета их частного:\n";
    cin >> number1;
    cin >> number2;

    try
    {
        float result = quotient(number1, number2);
        cout << "Частное равно " << result << endl;
    }
    catch (DivideByZeroError& error)
    {
        cout << "ОШИБКА: ";
        error.printMessage();
        return 1; // завершение программы при ошибке
    }

    return 0; // нормальное завершение программы
}

float quotient(int num1, int num2)
{
    if (num2 == 0)
        throw DivideByZeroError();
    return (float)num1 / num2;
}