#include <iostream>

using namespace std;

main()
{
    int array[100];

    for (int i = 0; i < 100; i++)
    {
        array[i] = i;
        cout << array[i] << ", and it's address is " << &array[i] << endl;
    }

    // infinite loop
    /* 
    for (;;)
        cout << 1 << endl;
    */
}