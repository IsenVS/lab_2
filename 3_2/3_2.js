function countEvenDigits(number) {
    let count = 0;
    while (number > 0) {
        let digit = number % 10;
        if (digit % 2 === 0) {
            count++;
        }
        number = Math.floor(number / 10);
    }
    return count;
}

function main() {
    let number;
    let numbers = [];
    console.log("Enter the numbers (enter 0 to complete):");
    while (true) {
        number = parseInt(prompt());
        if (number === 0) {
            break;
        }
        numbers.push(number);
    }
    for (let num of numbers) {
        let numEvenDigits = countEvenDigits(num);
        console.log("Number of even digits in " + num + ": " + numEvenDigits);
    }
}

main();