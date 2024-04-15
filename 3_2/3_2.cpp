#include <iostream>
#include <vector>
using namespace std;


int countEvenDigits(int number) {
    int count = 0;
    while (number > 0) {
        int digit = number % 10;
        if (digit % 2 == 0) {
            count++;
        }
        number = number / 10;
    }
    return count;
}

int main() {
    int number; int count = 0;
    vector<int> numbers;
    cout << "Enter the numbers (enter 0 to complete):" << endl;
    while (true) {
        cin >> number;
        count++;
        if (number == 0) {
            break;
        }
        numbers.push_back(number);
    }
    cout << "number of numbers: " << count - 1 << endl;
    for (int num : numbers) {
        int numEvenDigits = countEvenDigits(num);
        cout << "Number of even digits in " << num << ": " << numEvenDigits << endl;
    }
    return 0;
}