#include <iostream> 


using namespace std;
int main()
{
	system("chcp 1251");
	int k, m;
	int s = 0;
	cout << "������� 2 �����:\n";
	cin >> k;
	cin >>  m;

	
	for (int i = 1; i <= 100; i++)
	{
		if ((i > k) && (i < m))
			continue;
		s += i;
	}
	cout << "Total sum is: " << s << endl;
	return 0;
}