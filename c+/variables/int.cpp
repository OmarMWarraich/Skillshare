#include <iostream>

using namespace std;

main ()
{
    int a = 40, b, c =20;    // 4 bytes, -2 billions to 2 billions

    cout << "a : " << a << " address: " << &a << endl;
    cout << "b : " << b << " address: " << &b << endl;
    cout << "c : " << c << " address: " << &c << endl;

    short t1 = 5;  // -32768 to 32767, 2 bytes

    cout << t1 << endl;

    float t2 = 5.23;  // 4 bytes that are upto 38 zeros

    cout << t2 << endl;

    double t3 = 5.23;  // 8 bytes that are upto 308 zeros

    cout << t3 << endl;

    char t4;  // characters

    t4 = 'a';

    cout << t4 << endl;

    string t5 = "Hello World :-)";

    cout << t5 << endl;

    string x = "part1";

    string y = " part2";

    string combined_Strings = x + y;

    cout << combined_Strings << endl;

    // boolean | true or false, false is always zero, every other number is true.

    bool t6 = true;

    cout << t6 << endl;

    // for unsigned short int, 0 to 65535;

    unsigned short t7 = 65000;

    cout << t7 << endl;

    const string NAMEOFGAME = "conqueror of rome";   // immutable string

    cout << NAMEOFGAME << endl;
}