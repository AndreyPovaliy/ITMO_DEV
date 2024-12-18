#include <iostream>
#include <cstring>

int main(int argc, char* argv[])
{
    int num1;
    int num2;

    if (argc != 4)
    {
        std::cout << 0;
        return 0;
    }

    num1 = atoi(argv[2]);
    num2 = atoi(argv[3]);

    if (num1 == 0 || num2 == 0)
    {
        std::cout << 0;
        return 0;
    }

    if (strncmp(argv[1], "-a", 2) == 0)
    {
        std::cout << num1 + num2;
        return num1 + num2;
    }
    else if (strncmp(argv[1], "-m", 2) == 0)
    {
        std::cout << num1 * num2;
        return num1 * num2;
    }
    else
    {
        std::cout << 0;
        return 0;
    }
}