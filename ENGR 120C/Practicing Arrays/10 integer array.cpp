//Practice 1
//Include necessary header files
#include <iostream>
using namespace std;

int main()
{
	int a[10]; //creates an array with 10 blank spaces (will be filled up with the integers typed in by user)
	int i; //needed to store the 10 integers
	//ask user to enter 10 integers
	for (int i = 0; i < 10; i++) //loop will repeat until i reaches 10 (max amount of integers in array)
	{
		cout << "Enter integer " << i+1 << ": "; //code will ask user to enter integers 1-10
		cin >> a[i]; //values typed in by user will create an array
	}
	cout << endl; //moves cursor to next line (makes code cleaner)
	//outputs final array with 10 integers typed in by user
	cout << "Entered Array: "; //header before outputting the completed array
	for (int i = 0 ; i < 10; i++) //loop will repeat until i reaches 10 (max amount of integers in array)
	{
		cout << a[i] << " "; //code will output each integer in i position (with spaces in between each integer)
	}
	cout << endl;
	//computing the average of the integers
	int sum;
	double x;
	for (int i = 0; i < 10; i++) //loop will repeat until i reaches 10 (max amount of integers of array)
	{
		sum += a[i]; //sum = sum + integer in i position of the array (gets updated)	
	}
	x = sum/10.0; //most recent sum value will be divided by the amount of integers in array (10)
				  //10.0 is needed in order to allow the decimal to appear rather than rounding answer
	cout << "Average is: " << x; //outputs average calculated
	cout << endl; //moves cursor to next line
	//finding average of values above the initial average value
	int total;
	double FinalAverage;
	int count = 0; //initializing count at 0 (will increase as more integers greater than the average are located)
	for (int i = 0; i < 10; i++) //loop will repeat until i reaches 10
	{
		if (a[i] >= x) //if the integer in i position is greater than the average calculated
		{
			total += a[i]; //total = total + integer in i position of array that is greater than the average
			count++; //count will increase as code locates an integer that is greater than the average value
		}
	}
	FinalAverage = total/count; //final average is the sum of the integers greater than the initial average value, divided by the count
								//count contains the amount of integers found that are greater than the average value calculated
	cout << "Final Average: " << FinalAverage; //code outputs final average value calculated
}
