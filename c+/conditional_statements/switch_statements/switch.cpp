#include <iostream>

using namespace std;

main()
{
    int x = 0;

    switch (x) {
        case 0:
            cout << "x equals zero" << endl;
            break;
        case 10:
            cout << "x equals ten" << endl;
            break;
        case 25:
            cout << "x equals twenty-five" << endl;
            break;
        case 50:
            cout << "x equals fifty" << endl;
            break;
        default:
            cout << "x does not equal any specific case" << endl;
    }
}