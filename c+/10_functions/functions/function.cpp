#include <iostream>

using namespace std;
/* functions / methods */
// parameter
void welcome(); //declaration of function, procedure
bool isNumber(string);
void enterName();

main()
{
    //welcome();
    enterName();
    enterName();
    enterName();    
}
void welcome()
{
    cout << "Hello World!" << endl;
}
bool isNumber(string tmp)
{

    if (tmp[0] == '0')
        return false;

    for (int i = 0; i < tmp.length(); i++)
    {   
        if (!(tmp[i] >= 48 && tmp[i] <= 57))
        return false;
    }
    return true;
}
void enterName()
{
    string tmp;

    cout << "Enter the number: ";
    cin >> tmp;

    if (isNumber(tmp))
        cout << " Number entered correctly " << endl;
    else
        cout << " Number wasnt entered correctly" << endl;   
}