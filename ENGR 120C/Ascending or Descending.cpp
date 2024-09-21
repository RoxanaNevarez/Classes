#include <iostream>
using namespace std;

void swap(int&a, int&b)
{
	int temp;
	temp = a;
	a = b;
	b = temp;
}
void swapp(int&c, int&d)
{
	int tempp;
	tempp = c;
	c = d;
	d = tempp;
}
void ascending(int&a, int&b, int&c, int&d)
{
	if (a > b && c > d)
	{
	  swap(a,b);
	  swapp(c,d);
	}
}
void descending(int&a, int&b, int&c, int&d)
{
	if (b > a && d > c)
	{
	  swap(a,b);
	  swapp(c,d);
	}
	
}
int main()
{
	int w,x,y,z;
	char ch,a,b;
	cout << "Enter four integers: ";
	cin >> w >> x >> y >> z;
	cout << "Do you want numbers in ascending [a] or descending [d] order?: ";
	cin >> ch;
	if (ch == 'a')
	{
		ascending(w,x,y,z);
		cout << w << " " << x << " " << y << " " << z;
	}
	if (ch == 'd')
	{
		descending(w,x,y,z);
		cout << w << " " << x << " " << y << " " << z;
	}
	
	return 0;
}
