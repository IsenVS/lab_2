def count_even_digits(number):
    count = 0
    while number > 0:
        digit = number % 10
        if digit % 2 == 0:
            count += 1
        number = number // 10
    return count


numbers = []
print("Enter the numbers (enter 0 to complete):")
while True:
    number = int(input())
    if number == 0:
        break
    numbers.append(number)
for num in numbers:
    num_even_digits = count_even_digits(num)
    print("Number of even digits in", num, ":", num_even_digits)