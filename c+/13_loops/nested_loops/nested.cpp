#include <iostream>

using namespace std;

main()
{
    /*
    int nr = 123456;
    int nrOfDigits = 1;

    // cout << 1234 / 10 << endl;
    // cout << 123 / 10 << endl;
    // cout << 12 / 10 << endl;
    // cout << 1 / 10 << endl;

    int tmp = nr;
    while (tmp /= 10){
        nrOfDigits++;
    }
    cout << "the number " << nr << " has " << nrOfDigits << " digits" << endl;
    */
   for (int i = 1; i <= 10; i++){
        for (int j = 1; j <= 10; j++)
            cout << i * j << " ";
            cout << endl;      
   }
}