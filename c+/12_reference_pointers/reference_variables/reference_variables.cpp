#include <iostream>

using namespace std;
/* reference variables */

int main()
{
    string name = "Omar";

    cout << "value of variable = " << name << ", address of variable = " << &name << endl;

    // reference variable / & is denoted for creating a reference variable.
    string &nr_6 = name;

    cout << "value of variable = " << nr_6 << ", address of variable = " << &nr_6 << endl;

    nr_6 = "Ali";

    cout << "value of variable = " << nr_6 << ", address of variable = " << &nr_6 << endl;

    /*
    Reference variable must be initialized when created.
    Reference variables can not change connections/ associations.
    Reference variables must be of the same type as the associated variables.
    */

    return 0;
}
