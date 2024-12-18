#include <iostream>
#include "Patient.h"
#include "Doctor.h"
#include "Interface.h"

using std::cin;
using std::cout;
using std::endl;




int main()


{
	system("chcp 1251");

	Interface newInter;

	Doctor d_1("����", "������", 32, "������");
	Doctor d_2("���������", "��������", 55, "��������");
	Doctor d_3("�������", "�����", 41, "������������");
	
	Patient t_1("������", "������", 28, "������ �����");
	Patient t_2("����", "������", 60, "��������������� �������");
	Patient t_3("�����", "�������", 78, "�������� ������ 2 ����");

	newInter.addPerson(&d_1);
	newInter.addPerson(&d_2);
	newInter.addPerson(&d_3);

	newInter.addPerson(&t_1);
	newInter.addPerson(&t_2);
	newInter.addPerson(&t_3);

	newInter.printConsole();

	
	newInter.printFile("output.txt");



}