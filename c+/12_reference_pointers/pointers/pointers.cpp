#include <iostream>

using namespace std;
/* 
    pointers are ordinary variables that can store address of variables.
*/

/*
int main()
{
    int var = 5;

    cout << &var << endl;

    int *p;

    p = &var;

    cout << p << endl;

    return 0;    
}
*/

int main()
{
    int var = 5;
    int a = 40;

    cout << *&var << endl;  // An asterik here retrieves(gets) the value of the pointed variable.

    int *p; // An asterik here denotes that the pointer stores an address of a variable.

    p = &var;

    cout << p << endl;

    *p = 20;

    cout << "var: " << var << endl;
    cout << "*p: " << *p << endl;
    cout << "a: " << a << endl;
    cout << "&a: " << &a << endl;

    int * const p_const = &a; // Here the pointer has to be initialized while being declared as the value of the address it stores cannot be changed

    cout << "*p_const: " << *p_const << endl;
    cout << "&p_const: " << &p_const << endl;

    const int * p_2 = &a;

    cout << "*p_2: " << *p_2 << endl;
    cout << "&p_2: " << &p_2 << endl;


    return 0;    
}