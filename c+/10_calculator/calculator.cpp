#include <iostream>

using namespace std;

main()
{
    double var_1, var_2;

    beginning:
    system("clear");

    cout << "Enter first no: " << endl;
    cin >> var_1;

    cout << "Enter second no: " << endl;
    cin >> var_2;

    cout << "Which of the following operation do you want to apply?" << endl;
    cout << "+ - add" << endl;
    cout << "- - sub" << endl;
    cout << "/ - div" << endl;
    cout << "* - mul" << endl;

    char operation;

    cin >> operation;

    system("clear");

    switch (operation)
    {
        case '+':
            cout << var_1 << '+' << var_2 << '=' << (var_1 + var_2) << endl;
            break;
        case '-':
            cout << var_1 << '-' << var_2 << '=' << (var_1 - var_2) << endl;
            break;
        case '/':
            if (var_2)  // var_2 != 0
                cout << var_1 << '/' << var_2 << '=' << (var_1 / var_2) << endl;
            else
                cout << "You cannot divide a number by zero" << endl;
            break;
        case '*':
            cout << var_1 << '*' << var_2 << '=' << (var_1 * var_2) << endl;
            break;
        default:
            cout << "Your selected wrong operation" << endl;
    }
    char decision;

    cout << "Do you want to continue? (Y/N)" << endl;
    cin >> decision;

    if (decision == 'y' || decision == 'Y')    
        goto beginning;

}