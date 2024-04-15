using System;
using System.Linq;

namespace Code
{
    class Program
    {
        static void Main()
        {
            string String = "1001";
            int x = 1;
            int Count = String.Count(c => c == '1');
            bool flag = true;
            int length = String.Length;
            int limit = x * Count + 1;
            int max = 0;
            int currentCount = 0;

            for (int i = 0; i < length - 1; i++)
            {
                if (String[i] == '0')
                {
                    currentCount += 1;
                    if (max < currentCount)
                        max = currentCount;
                    else
                        currentCount = 0;
                }

                if (max >= limit)
                {
                    flag = false;
                    break;
                }
            }

            if (flag)
                Console.WriteLine("Yes");
            else
                Console.WriteLine("No");
        }
    }
}