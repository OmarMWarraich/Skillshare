#include <iostream>

using namespace std;

main () {
    /* 
    Bitwise OR - |
    Bitwise AND - &
    Bitwise NOT - ~
    Bitwise XOR - ^
    0  0  0
    0  1  1
    1  0  1
    1  1  0
    Bitwise left shift - <<
    Bitwise right shift - >>
    */
   cout << (10 & 2) << endl;

   /*
        1 0 1 0
        0 0 1 0
        -------
        0 0 1 0
   */

    cout << (10 | 2) << endl;

   /*
        1 0 1 0
        0 0 1 0
        -------
        1 0 1 0
   */

    cout << (10 ^ 2) << endl;

   /*
        1 0 1 0
        0 0 1 0
        -------
        1 0 0 0
   */

    cout << (~10) << endl;

   /*
        1 0 1 0
        -------
        0 1 0 1
   */

    cout << (10 >> 2) << endl;


    cout << (10 << 2) << endl;

}