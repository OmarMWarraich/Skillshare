#include <iostream>

using namespace std;

enum dayOfWeek {Mon = 1, Tue, Wed, Thu, Fri, Sat, Sun};
string getDay(dayOfWeek);

int main()
{
    dayOfWeek d = Mon;

    int i;
    // cout << d << endl;

    cout << "Enter the no. of the day of week: " << endl;
    cout << "Monday : 1" << endl;
    cout << "Tuesday : 2" << endl;
    //......
    cin >> i;

    cout << getDay(dayOfWeek(i)) << endl;

    return 0;
}

string getDay(dayOfWeek d)
{
    switch (d)
    {
        case Mon:
            return "Monday";
        break;
        case Tue:
            return "Tuesday";
        break;
        case Thu:
            return "Thursday";
        break;
        case Wed:
            return "Wednesday";
        break;
        case Fri:
            return "Friday";
        break;
        case Sat:
            return "Saturday";
        break;
        case Sun:
            return "Sunday";
        default:
            return "You typed something wrong.";
    }
}