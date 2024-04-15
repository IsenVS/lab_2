// Technology Stack: Java

import java.util.ArrayList;
import java.util.Scanner;

public class Main {

    public static int countEvenDigits(int number) {
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

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int number;
        ArrayList<Integer> numbers = new ArrayList<>();
        System.out.println("Enter the numbers (enter 0 to complete):");
        while (true) {
            number = scanner.nextInt();
            if (number == 0) {
                break;
            }
            numbers.add(number);
        }
        for (int num : numbers) {
            int numEvenDigits = countEvenDigits(num);
            System.out.println("Number of even digits in " + num + ": " + numEvenDigits);
        }
    }
}