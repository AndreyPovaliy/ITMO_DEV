#include <iostream>


using std::cout;
using std::endl;


class Stack {
private:
    static const int ARRAY_LENGTH = 10;
public:
    Stack()
    {}
    void reset() {
        length = 0;
        for (auto& item : arr) {
            item = 0;
        }
    }
    bool push(int value) {
        if (length < ARRAY_LENGTH) {
            arr[length] = value;
            length++;
            return true;
        }
        else {
            return false;
        }
    }
    int pop() {
        int temp;
        if (length >= 0) {
            length--;
            temp = arr[length];
            arr[length] = 0;
        }
        else {
            temp = -999;
            cout << "В стеке больше нет элементов" << endl;
        }
        return temp;
    }
    void print() {
        cout << "( ";
        for (auto& item : arr) {
            if (item != 0) {
                cout << item << " ";
            }
        }
        cout << ")" << endl;
    }
    int length;
    int arr[ARRAY_LENGTH];
};

int main() {
    system("chcp 1251");
    Stack stack;
    stack.reset();
    stack.print();
    stack.push(3);
    stack.push(7);
    stack.push(5);
    stack.print();
    stack.pop();
    stack.print();
    stack.pop();
    stack.pop();
    stack.print();
    return 0;
}