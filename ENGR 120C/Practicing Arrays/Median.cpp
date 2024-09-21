#include <iostream>
using namespace std;


int main()
{
	int a[11]; //creates an array with 11 blank spaces (will be filled up with the integers typed in by user)
	int i; //needed to store the 11 integers
	//ask user to enter 10 integers
	for (int i = 0; i < 11; i++) //loop will repeat until i reaches 10 (max amount of integers in array)
	{
		cout << "Enter integer " << i+1 << ": "; //code will ask user to enter integers 1-10
		cin >> a[i]; //values typed in by user will create an array
	}
	cout << endl; //moves cursor to next line (makes code cleaner)
	//outputs final array with 10 integers typed in by user
	cout << "Entered Array: "; //header before outputting the completed array
	for (int i = 0 ; i < 11; i++) //loop will repeat until i reaches 10 (max amount of integers in array)
	{
		cout << a[i] << " "; //code will output each integer in i position (with spaces in between each integer)
	}
	
	//computing the median of the array
	
	cout << endl;
}
