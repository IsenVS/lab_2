import Foundation

func countEvenDigits(_ number: Int) -> Int {
    var count = 0
    var num = number
    while num > 0 {
        let digit = num % 10
        if digit % 2 == 0 {
            count += 1
        }
        num = num / 10
    }
    return count
}

func main() {
    var numbers = [Int]()
    print("Enter the numbers (enter 0 to complete):")
    while true {
        if let input = readLine(), let number = Int(input) {
            if number == 0 {
                break
            }
            numbers.append(number)
        }
    }
    for num in numbers {
        let numEvenDigits = countEvenDigits(num)
        print("Number of even digits in \(num): \(numEvenDigits)")
    }
}

main()
