def count_even_digits(number)
    count = 0
    while number > 0
        digit = number % 10
        if digit % 2 == 0
            count += 1
        end
        number = number / 10
    end
    return count
end

numbers = []
puts "Enter the numbers (enter 0 to complete):"
while true
    number = gets.chomp.to_i
    if number == 0
        break
    end
    numbers.push(number)
end

numbers.each do |num|
    num_even_digits = count_even_digits(num)
    puts "Number of even digits in #{num}: #{num_even_digits}"
end