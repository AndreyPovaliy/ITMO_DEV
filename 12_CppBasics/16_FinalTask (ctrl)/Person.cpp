#include "Person.h"



using std::string;


Person::Person(const string& name, const string& surname, int age) : name(name), surname(surname), age(age) {}

void Person::setName(const string& name) {
    this->name = name;
}

void Person::setSurName(const string& surname) {
    this->surname = surname;
}

void Person::setAge(int age) {
    this->age = age;
}

string Person::getName() const {
    return name;
}

string Person::getSurName() const {
    return surname;
}

int Person::getAge() const {
    return age;
}