use std::io::{self, Write};

fn count_even_digits(mut number: i32) -> i32 {
    let mut count = 0;
    while number > 0 {
        let digit = number % 10;
        if digit % 2 == 0 {
            count += 1;
        }
        number /= 10;
    }
    count
}

fn main() {
    let mut input = String::new();
    let mut numbers: Vec<i32> = Vec::new();
    
    println!("Enter the numbers (enter 0 to complete):");
    loop {
        input.clear();
        io::stdin().read_line(&mut input).unwrap();
        let number: i32 = input.trim().parse().unwrap();
        if number == 0 {
            break;
        }
        numbers.push(number);
    }
    
    for num in numbers {
        let num_even_digits = count_even_digits(num);
        println!("Number of even digits in {}: {}", num, num_even_digits);
    }
}