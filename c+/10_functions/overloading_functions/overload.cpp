#include <iostream>

using namespace std;

/* overloading functions */

int power(int, int);
double power(double, int);
int main()
{
    cout << power(2, 3) << endl;
    return 0;
}

int power(int b, int e)
{
    int tmp = b;
    int i = 0;
    while(i++ < e)
    {   
        cout << tmp << " ^ " << i << " = " << b << endl;
        if(i != e)
        b *= tmp;
    }
    return b;
}

double power(double b, int e)
{
    double tmp = b;
    while(e-- > 1)
        b *= tmp;
    return b;
}