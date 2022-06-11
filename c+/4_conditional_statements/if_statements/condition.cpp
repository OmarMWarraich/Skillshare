#include <iostream>

using namespace std;

main()
{
    int a, b;

    cout << "Enter a: " << endl;
    cin >> a;

    cout << "Enter b: " << endl;
    cin >> b;

    if (a > b) 
        cout << a << " > " << b << endl;
    else
        cout << a << " < " << b << endl;
}