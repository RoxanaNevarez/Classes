#include <iostream>
#include <iomanip>
#include <fstream>
using namespace std;

//user-defined function prototypes with parameter lists needed in order to run the code
string FeetConversions(int a, int b, int e);
string MileConversions(int a, int b, int e);
string MeterConversions(int a, int b, int e);
string InchConversions(int a, int b, int e);
string CentimeterConversions(int a, int b, int e);

int main()
{
	int n,c,d;
	//user enters the type of distance they are inputting
	cout << "What type of distance are you inputting?" << endl;
	cout << "[1] for Feet" << endl;
	cout << "[2] for Miles" << endl;
	cout << "[3] for Meters" << endl;
	cout << "[4] for Inches" << endl;
	cout << "[5] for Centimeters" << endl;
	cout << "Your response: ";
	cin >> n;
	cout << endl;
	
	//in case user enters a value different than the ones listed
	while (n <= 0 || n > 5) //process will repeat as long as user continues to enter a value equal to or less than 0 or a value greater than 5
	{
		cout << "Invalid response. Try again or type [7] to exit code." << endl;
		cout << "What type of distance are you inputting?" << endl;
		cout << "[1] for Feet" << endl;
		cout << "[2] for Miles" << endl;
		cout << "[3] for Meters" << endl;
		cout << "[4] for Inches" << endl;
		cout << "[5] for Centimeters" << endl;
		cout << "[7] to exit code" << endl;
		cout << "Your response: ";
		cin >> n;
		cout << endl;
		if (n == 7)
		{
			exit(1);
		}
	}
	cout << endl;
	
	//code will continue to ask what they want their value to be converted to
	cout << "What do you want your distance to be converted to?" << endl;
	cout << "[1] for Feet" << endl;
	cout << "[2] for Miles" << endl;
	cout << "[3] for Meters" << endl;
	cout << "[4] for Inches" << endl;
	cout << "[5] for Centimeters" << endl;
	cout << "Your response: ";
	cin >> c; 
	cout << endl;
	
	//in case user enters a value different than the ones listed
	while (c <= 0 || c > 5) //process will repeat as long as user continues to enter a value equal to or less than 0 or a value greater than 5
	{
		cout << "Invalid response. Try again or type [7] to exit code." << endl;
		cout << "What do you want your distance to be converted to?" << endl;
		cout << "[1] for Feet" << endl;
		cout << "[2] for Miles" << endl;
		cout << "[3] for Meters" << endl;
		cout << "[4] for Inches" << endl;
		cout << "[5] for Centimeters" << endl;
		cout << "[7] to exit code" << endl;
		cout << "Your response: ";
		cin >> c;
		cout << endl;
		if (c == 7)
		{
			exit(1);
		}
	}
	cout << endl;
	cout << "Enter your distance: ";
	cin >> d;
	cout << endl;

	//if user's measurements were intially in feet
		if (n == 1)
		{
			cout << FeetConversions(n,c,d);
		}
	//if user's measurements were intially in miles
		if (n == 2)
		{
			cout << MileConversions(n,c,d);
		}
	//if user's measurements were initially in meters
		if (n == 3)
		{
			cout << MeterConversions(n,c,d);
		}
	//if user's measurements were initially in inches
		if (n == 4)
		{
			cout << InchConversions(n,c,d);
		}
	//if user's measurements were initially in centimeters
		if (n == 5)
		{
			cout << CentimeterConversions(n,c,d);
		}
	
	return 0;
}

//user-defined functions needed to be string function type in order to return a blank space rather than a digit at the end of the word output

//user-defined function containing feet conversions to other units of measurement
string FeetConversions(int a, int b, int e)
{
	ofstream Measurements ("Measurements.txt");
	if (Measurements.is_open())
	{
		if (a == 1 && b == 1)
		{
			Measurements << "User wants to convert " << e << " feet to feet.\n" << endl;
			cout << "Value is already in feet.";
			Measurements << "Value is already in feet.";
		}
		if (a == 1 && b == 2)
		{
			Measurements << "User wants to convert " << e << " feet to miles.\n" << endl;
			double miles;
			miles = e /5280.0; //1 mile = 5280 feet 
			cout << e << "ft converts to " << fixed << setprecision(3) << miles << " miles."; 
			Measurements << e << "ft converts to " << fixed << setprecision(3) << miles << " miles.";
		}
		if (a == 1 && b == 3)
		{
			Measurements << "User wants to convert " << e << " feet to meters.\n" << endl;
			double meters;
			meters = e / 3.28; //1 meter = 3.28 feet
			cout << e << "ft converts to " << meters << " meters.";
			Measurements << e << "ft converts to " << meters << " meters.";
		}
		if (a == 1 && b == 4)
		{
			Measurements << "User wants to convert " << e << " feet to inches.\n" << endl;
			double inches;
			inches = e * 12.0; //12 inches = 1 foot
			cout << e << "ft converts to " << inches << " inches.";
			Measurements << e << "ft converts to " << inches << " inches.";
		}
		if (a == 1 && b == 5)
		{
			Measurements << "User wants to convert " << e << " feet to centimeters.\n" << endl;
			double centimeters;
			centimeters = e * 30.48; //30.48 centimeters = 1 foot
			cout << e << "ft converts to " << centimeters << " centimeters.";
			Measurements << e << "ft converts to " << centimeters << " centimeters.";
		}
	}
	return " ";
}

//user-defined function containing mile conversions to other units of measurement
string MileConversions (int a, int b, int e)
{
	ofstream Measurements ("Measurements.txt");
	if (Measurements.is_open())
	{
		if (a == 2 && b == 2)
		{
			Measurements << "User wants to convert " << e << " miles to miles.\n" << endl;
			cout << "Value is already in miles.";
			Measurements << "Value is already in miles.";
		}
		if (a == 2 && b == 1)
		{
			Measurements << "User wants to convert " << e << " miles to feet.\n" << endl;
			double feet;
			feet = e * 5280.0; //1 mile = 5280 feet 
			cout << e << " mile(s) converts to " << fixed << setprecision(3) << feet << " ft."; 
			Measurements << e << " mile(s) converts to " << fixed << setprecision(3) << feet << " ft."; 
		}
		if (a == 2 && b == 3)
		{
			Measurements << "User wants to convert " << e << " miles to meters.\n" << endl;
			double meters;
			meters = e * 1609.34; //1 mile = 1609.34 meters
			cout << e << " mile(s) converts to " << meters << " meters.";
			Measurements << e << " mile(s) converts to " << meters << " meters.";
		}
		if (a == 2 && b == 4)
		{
			Measurements << "User wants to convert " << e << " miles to inches.\n" << endl;
			double inches;
			inches = e * 63360.0; //1 mile = 63360 inches
			cout << e << " mile(s) converts to " << inches << " inches.";
			Measurements << e << " mile(s) converts to " << inches << " inches.";
		}
		if (a == 2 && b == 5)
		{
			Measurements << "User wants to convert " << e << " miles to centimeters.\n" << endl;
			double centimeters;
			centimeters = e * 160934.0; //1 mile = 160934 centimeters
			cout << e << " mile(s) converts to " << centimeters << " centimeters.";
			Measurements << e << " mile(s) converts to " << centimeters << " centimeters.";
		}
	}
	return " ";
}

//user-defined function containing meter conversions to other units of measurement
string MeterConversions(int a, int b, int e)
{
	ofstream Measurements ("Measurements.txt");
	if (Measurements.is_open())
	{
		if (a == 3 && b == 3)
		{
			Measurements << "User wants to convert " << e << " meters to meters.\n" << endl;
			cout << "Value is already in meters.";
			Measurements << "Value is already in meters.";
		}
		if (a == 3 && b == 1)
		{
			Measurements << "User wants to convert " << e << " meters to feet.\n" << endl;
			double feet;
			feet = e * 3.28; //1 meter = 3.28 feet
			cout << e << " meter(s) converts to " << fixed << setprecision(3) << feet << " ft."; 
			Measurements << e << " meter(s) converts to " << fixed << setprecision(3) << feet << " ft.";
		}
		if (a == 3 && b == 2)
		{
			Measurements << "User wants to convert " << e << " meters to miles.\n" << endl;
			double miles;
			miles = e * 0.000621; //1 meter = 0.000621 miles
			cout << e << " meter(s) converts to " << miles << " miles.";
			Measurements << e << " meter(s) converts to " << miles << " miles.";
		}
		if (a == 3 && b == 4)
		{
			Measurements << "User wants to convert " << e << " meters to inches.\n" << endl;
			double inches;
			inches = e * 39.37; //1 meter = 39.37 inches
			cout << e << " meter(s) converts to " << inches << " inches.";
			Measurements << e << " meter(s) converts to " << inches << " inches.";
		}
		if (a == 3 && b == 5)
		{
			Measurements << "User wants to convert " << e << " meters to centimeters.\n" << endl;
			double centimeters;
			centimeters = e * 100.0; //1 meter = 100 centimeters
			cout << e << " meter(s) converts to " << centimeters << " centimeters.";
			Measurements << e << " meter(s) converts to " << centimeters << " centimeters.";
		}
	}
	return " ";
}

//user-defined function containing inch conversions to other units of measurement
string InchConversions(int a, int b, int e)
{
	ofstream Measurements ("Measurements.txt");
	if (Measurements.is_open())
	{
		if (a == 4 && b == 4)
		{
			Measurements << "User wants to convert " << e << " inches to inches.\n" << endl;
			cout << "Value is already in inches.";
			Measurements << "Value is already in inches.";
		}
		if (a == 4 && b == 1)
		{
			Measurements << "User wants to convert " << e << " inches to feet.\n" << endl;
			double feet;
			feet = e / 12.0; //1 inch = 1/12 feet
			cout << e << " inch(es) converts to " << fixed << setprecision(3) << feet << " ft."; 
			Measurements << e << " inch(es) converts to " << fixed << setprecision(3) << feet << " ft.";
		}
		if (a == 4 && b == 2)
		{
			Measurements << "User wants to convert " << e << " inches to miles.\n" << endl;
			double miles;
			miles = e / 63360.0; //1 inch = 1/63360 miles
			cout << e << " inch(es) converts to " << miles << " miles.";
			Measurements << e << " inch(es) converts to " << miles << " miles.";
		}
		if (a == 4 && b == 3)
		{
			Measurements << "User wants to convert " << e << " inches to meters.\n" << endl;
			double meters;
			meters = e / 39.37; //1 inch = 1/39.37 meters
			cout << e << " inch(es) converts to " << meters << " meters.";
			Measurements << e << " inch(es) converts to " << meters << " meters.";
		}
		if (a == 4 && b == 5)
		{
			Measurements << "User wants to convert " << e << " inches to centimeters.\n" << endl;
			double centimeters;
			centimeters = e * 2.54; //1 inch = 2.54 centimeters
			cout << e << " inch(es) converts to " << centimeters << " centimeters.";
			Measurements << e << " inch(es) converts to " << centimeters << " centimeters.";
		}
	}
	return " ";
}

//user-defined function containing centimeter conversions to other units of measurement
string CentimeterConversions(int a, int b, int e)
{
	ofstream Measurements ("Measurements.txt");
	if (Measurements.is_open())
	{
		if (a == 5 && b == 5)
		{
			Measurements << "User wants to convert " << e << " centimeters to centimeters.\n" << endl;
			cout << "Value is already in centimeters.";
			Measurements << "Value is already in centimeters.";
		}
		if (a == 5 && b == 1)
		{
			Measurements << "User wants to convert " << e << " centimeters to feet.\n" << endl;
			double feet;
			feet = e / 30.48; //1 foot = 30.48 centimeters
			cout << e << " centimeter(s) converts to " << fixed << setprecision(3) << feet << " ft."; 
			Measurements << e << " centimeter(s) converts to " << fixed << setprecision(3) << feet << " ft."; 
		}
		if (a == 5 && b == 2)
		{
			Measurements << "User wants to convert " << e << " centimeters to miles.\n" << endl;
			double miles;
			miles = e / 160934.0; //1 mile = 160934 centimeters
			cout << e << " centimeter(s) converts to " << miles << " miles.";
			Measurements << e << " centimeter(s) converts to " << miles << " miles.";
		}
		if (a == 5 && b == 3)
		{
			Measurements << "User wants to convert " << e << " centimeters to meters.\n" << endl;
			double meters;
			meters = e / 100.0; //1 meter = 100 centimeters
			cout << e << " centimeter(s) converts to " << meters << " meters.";
			Measurements << e << " centimeter(s) converts to " << meters << " meters.";
		}
		if (a == 5 && b == 4)
		{
			Measurements << "User wants to convert " << e << " centimeters to inches.\n" << endl;
			double inches;
			inches = e / 2.54; //1 inch = 2.54 centimeters
			cout << e << " centimeter(s) converts to " << inches << " inches.";
			Measurements << e << " centimeter(s) converts to " << inches << " inches.";
		}
	}
	return " ";	
}
