#include <iostream>

using namespace std;

/*
void swap(int &, int &); 

int main()
{
    int a = 10;
    int b = 20;

 
    swap(a, b);

    cout <<  "a: " << a << endl;
    cout <<  "b: " << b << endl;
    // cout <<  "c: " << c << endl;

    return 0;
}

void swap(int &x, int &y)
{
    int t;
    t = x;
    x = y;
    y = t;

    cout <<  "x: " << x << endl;
    cout <<  "y: " << y << endl;
 
}
*/
int & swap(int & , int &); 

int main()
{
    int a = 10;
    int b = 20;

    
    int &c = swap(a, b);
    c = 100;

    cout <<  "a: " << a << endl;
    cout <<  "b: " << b << endl;
    cout <<  "c: " << c << endl;

    return 0;
}

int & swap(int &x, int &y)
{
    int t;
    t = x;
    x = y;
    y = t;

    return x;
 
}