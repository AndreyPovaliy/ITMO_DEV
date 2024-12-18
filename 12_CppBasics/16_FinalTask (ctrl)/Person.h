#pragma once
#include <fstream>
#include <vector>
#include <string>

using std::string;

class Person
{
protected:
    string name;
    string surname;
    int age;

public:
    Person(const string& name, const string& surname, int age);

    virtual void printDetails() = 0;

    
    void setName(const string& name);
    void setSurName(const string& surname);
    void setAge(int age);

    string getName() const;
    string getSurName() const;
    int getAge() const;



};