#include <iostream>

using namespace std;

main() 
{
    int a, b;

    cout << "Enter a: " << endl;
    cin >> a;
    cout << "Enter b: " << endl;
    cin >> b;

    string statement = (a > b) ? "a > b" : "a <= b";

    cout << statement << endl;
}