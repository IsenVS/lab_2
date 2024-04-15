import java.util.Scanner

fun countEvenDigits(number: Int): Int {
    var count = 0
    var num = number
    while (num > 0) {
        val digit = num % 10
        if (digit % 2 == 0) {
            count++
        }
        num /= 10
    }
    return count
}

fun main() {
    val scanner = Scanner(System.`in`)
    val numbers = ArrayList<Int>()
    println("Enter the numbers (enter 0 to complete):")
    while (true) {
        val number = scanner.nextInt()
        if (number == 0) {
            break
        }
        numbers.add(number)
    }
    for (num in numbers) {
        val numEvenDigits = countEvenDigits(num)
        println("Number of even digits in $num: $numEvenDigits")
    }
}