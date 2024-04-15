const S = "1001";
let x = 1;
const c = S.split('').filter(char => char === '1').length;
let flag = true;
const N = S.length;
const limit = x * c + 1;
let max = 0;
let count = 0;

for (let i = 0; i < N - 1; i++) {
    if (S[i] === '0') {
        count += 1;
        if (max < count) {
            max = count;
        } else {
            count = 0;Ы
        }
    }
    if (max >= limit) {
        flag = false;
        break;
    }
}

if (flag) {
    console.log("Yes");
} else {
    console.log("No");
}