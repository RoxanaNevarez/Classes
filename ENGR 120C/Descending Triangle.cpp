#include <iostream>
using namespace std;
int main() {
    int rows = 5; // adjust as needed
    
    for (int i=0; i<rows; i++) {
        for (int j=i+1; j<=rows; j++) {
            cout << "*";
        }
        cout << endl;
    }
    return 0;
}
