use std::collections::HashMap;

fn main() {
    let s = String::from("1001");
    let x = 1;
    let c = s.chars().filter(|&c| c == '1').count();
    let mut flag = true;
    let n = s.len();
    let limit = x * c + 1;
    let mut max = 0;
    let mut count = 0;
    
    for i in 0..n - 1 {
        if s.chars().nth(i).unwrap() == '0' {
            count += 1;
            if max < count {
                max = count;
            } else {
                count = 0;
            }
        }
        if max >= limit {
            flag = false;
            break;
        }
    }
    
    if flag {
        println!("Yes");
    } else {
        println!("No");
    }
}