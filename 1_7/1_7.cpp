#include <iostream>
#include <string>
#include <bits/stdc++.h>
using namespace std;

int main()
{
    string S = "1001";
    int x = 1;
    int c = count(S.begin(), S.end(), '1');
    bool flag = true;
    int N = S.length();
    int limit = x * c + 1;
    int max = 0; int count = 0;
    for (int i = 0; i < N - 1; i++)
    {
        if (S[i] == '0')
        {
            count += 1;
            if (max < count)
                max = count;

        if (max >= limit)
        {
            flag = false;
            break;
        }

        }if (S[i] != '0') 
            {
                count = 0;
            }
        
        
    }
    if (flag)
        cout << "Yes";
    else 
        cout << "No";
}