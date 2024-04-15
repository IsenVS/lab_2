package main

import (
	"fmt"
)

func countEvenDigits(number int) int {
	count := 0
	for number > 0 {
		digit := number % 10
		if digit % 2 == 0 {
			count++
		}
		number = number / 10
	}
	return count
}

func main() {
	var number int
	numbers := make([]int, 0)
	fmt.Println("Enter the numbers (enter 0 to complete):")
	for {
		fmt.Scanln(&number)
		if number == 0 {
			break
		}
		numbers = append(numbers, number)
	}
	for _, num := range numbers {
		numEvenDigits := countEvenDigits(num)
		fmt.Println("Number of even digits in ", num, ": ", numEvenDigits)
	}
}