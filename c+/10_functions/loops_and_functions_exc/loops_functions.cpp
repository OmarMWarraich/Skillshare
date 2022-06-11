#include <iostream>
#define PI 3.14

using namespace std;

void initMenu();
void menuDecision(int);
double areaCircle(double);
double areaSquare(double);
double areaRectangle(double, double);
double areaTriangle(double, double);

int main()
{
    int choice;
    char cont;
    do
    {
    system("clear");
    initMenu();

    cin >> choice;

    menuDecision(choice);
    do
    {
        cout << "Do you want to continue? (y/n)" << endl;
        cin >> cont;
    }   while(cont != 'y' && cont != 'Y' && cont != 'n' && cont != 'N');
    }
    while(cont == 'y' || cont == 'Y');
    
    return 0;
}

void initMenu()
{
    cout << "Enter option." << endl;
    cout << "1. Circle" << endl;
    cout << "2. Square" << endl;
    cout << "3. Rectangle" << endl;
    cout << "4. Triangle" << endl;
}

void menuDecision(int choice)
{   
    double r, a, b, h;
    switch(choice)
    {
        case 1:
            cout << "Enter the radius: " << endl;
            cin >> r;
            areaCircle(r); 
            break;
        case 2:
            cout << "Enter the side: " << endl;
            cin >> a;
            areaSquare(a); 
            break;
        case 3:
            cout << "Enter the width and height of rectangle: " << endl;
            cin >> b >> h;
            areaRectangle(b, h); 
            break;
        case 4:
            cout << "Enter the base and height of triangle: " << endl;
            cin >> b >> h;
            areaTriangle(b, h); 
            break;
        default:
            cout << "You did not choose any of the given options." << endl;
    }   
}

double areaCircle(double r)
{
    double result = PI * r * r;
    cout << "The area of the circle with radius " << r << " = " << result << endl;
    return result;
}

double areaSquare(double a)
{
    double result = a * a;
    cout << "The area of the square with side " << a << " = " << result << endl;
    return result;
}

double areaRectangle(double b, double h)
{
    double result = b * h;
    cout << "The area of the rectangle with width " << b << " and " << "height " << h << " = " << result << endl;
    return result;
}

double areaTriangle(double b, double h)
{
    double result = (1 / 2.0) * b * h;
    cout << "The area of the triangle with base " << b << " and " << "height " << h << " = " << result << endl;
    return result;
}
