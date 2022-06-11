#include <iostream>

using namespace std;
/* Scope / range of variables */

int globalVariable;
main()
{
    /*
        int localVariable;

        cout << "value of globalVariable: " << globalVariable << endl;
        cout << "value of localVariable: " << localVariable << endl;   
    */

   int nr, result = 0;
   int i = 0;

   for (; i < 3; i++)
   {
       cout << "Enter " << (i + 1) << "number" << endl;
       cin >> nr;
       result += nr;
   }
   cout << result << endl;
   cout << "we added " << i << " numbers" << endl;
}