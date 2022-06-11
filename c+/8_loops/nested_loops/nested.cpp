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
   /*
   for (int i = 1; i <= 10; i++) // amount of rows, length of columns
   {
        if (i == 5)
            continue; // row no 5 has been omitted.
        if (i == 7)
            break;    // due to break, loop stops before row no 7.
        for (int j = 1; j <= 10; j++) // amount of columns, length of rows
        {
            cout.width(4);
            cout << i * j;      
        }
        cout << endl;
   }
   */
  for (int i = 1, j = 1; i <= 10; i++)
  {
      cout.width(4);
      cout << i * j;

      if (i == 10)
      {
          j++;
          i = 0;
          cout << endl;
      }

      if (j == 10 + 1)
      {break;}

  }
}