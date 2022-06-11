#include <iostream>

using namespace std;

main()
{
    int biArray[3][4] = {0};

    cout << &biArray[0] << endl;
    cout << &biArray[0][0] << endl;
    cout << &biArray[0][1] << endl;
    cout << &biArray[0][2] << endl;
    cout << &biArray[0][3] << endl;
    cout << &biArray[1] << endl;
    cout << &biArray[1][0] << endl;
    cout << &biArray[1][1] << endl;

}