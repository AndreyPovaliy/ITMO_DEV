#include <iostream>
#include <string>
#include <map>


using std::string;
using std::map;
using std::cout;
using std::endl;


struct StudentGrade
{
    string name;
    char grade;

    StudentGrade(string name, char grade)
    {
        this->name = name;
        this->grade = grade;
    }
};

int main()
{
    system("chcp 1251");
    const char grade5 = '5';
    const char grade4 = '4';
    const char grade3 = '3';
    const char grade2 = '2';
    const char gradeN = 'N';

    StudentGrade ivan("Виталий", grade5);
    StudentGrade pavel("Сергей", grade4);
    StudentGrade irina("Иван", gradeN);
    StudentGrade maria("Екатерина", grade4);

    map<string, char> studMap;
    studMap[ivan.name] = ivan.grade;
    studMap[pavel.name] = pavel.grade;
    studMap[irina.name] = irina.grade;
    studMap[maria.name] = maria.grade;

    for (auto item = studMap.begin(); item != studMap.end(); item++)
    {
        cout << item->first << ": " << item->second << endl;
    }

    return 0;
}