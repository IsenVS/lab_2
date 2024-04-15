using System;
using System.Collections.Generic;

namespace EvenDigitsCounter
{
    class Program
    {
        static int CountEvenDigits(int number)
        {
            int count = 0;
            while (number > 0)
            {
                int digit = number % 10;
                if (digit % 2 == 0)
                {
                    count++;
                }
                number = number / 10;
            }
            return count;
        }

        static void Main(string[] args)
        {
            int number;
            List<int> numbers = new List<int>();
            Console.WriteLine("Enter the numbers (enter 0 to complete):");
            while (true)
            {
                number = Convert.ToInt32(Console.ReadLine());
                if (number == 0)
                {
                    break;
                }
                numbers.Add(number);
            }
            foreach (int num in numbers)
            {
                int numEvenDigits = CountEvenDigits(num);
                Console.WriteLine("Number of even digits in " + num + ": " + numEvenDigits);
            }
        }
    }
}