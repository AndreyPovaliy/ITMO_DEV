#include <iostream> 
#include <string>


using namespace std;

class DivideByZeroError {
public:
    DivideByZeroError() : message("������� �� ����") { }
    void printMessage() const { cout << message << endl; }
private:
    string message;
};

float quotient(int, int);

int main() {
    system("chcp 1251");

    int number1, number2;
    cout << "������� ��� ����� ����� ��� ������� �� ��������:\n";
    cin >> number1;
    cin >> number2;

    try
    {
        float result = quotient(number1, number2);
        cout << "������� ����� " << result << endl;
    }
    catch (DivideByZeroError& error)
    {
        cout << "������: ";
        error.printMessage();
        return 1; // ���������� ��������� ��� ������
    }

    return 0; // ���������� ���������� ���������
}

float quotient(int num1, int num2)
{
    if (num2 == 0)
        throw DivideByZeroError();
    return (float)num1 / num2;
}