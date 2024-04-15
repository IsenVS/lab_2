import Foundation

func main() {
    let S = "1001"
    var x = 1
    let c = S.filter { $0 == "1" }.count
    var flag = true
    let N = S.count
    let limit = x * c + 1
    var max = 0
    var count = 0
    
    for i in 0..<(N - 1) {
        if S[S.index(S.startIndex, offsetBy: i)] == "0" {
            count += 1
            if max < count {
                max = count
            } else {
                count = 0
            }
        }
        if max >= limit {
            flag = false
            break
        }
    }
    
    if flag {
        print("Yes")
    } else {
        print("No")
    }
}

main()
