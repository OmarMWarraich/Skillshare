#include <iostream>
// #include <array>

using namespace std;

main()
{    
    const int SIZEOFARRAY = 10;
    int i = 0;
    int array[SIZEOFARRAY];
    while(i < SIZEOFARRAY)
    {
        array[i] = 10 * i;
        cout << array[i++] << endl;
    }
    // Condition is not checked in the beginning in do while loop while the condition is checked in the beginning in while loop.
    // do
    // {
    //     cout << "lala" << endl;
    // } while(i);

}