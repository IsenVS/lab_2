import java.util.*

fun main() {
    val S: String = "1001"
    var x: Int = 1
    val c: Int = S.count { it == '1' }
    var flag: Boolean = true
    val N: Int = S.length
    val limit: Int = x * c + 1
    var max: Int = 0
    var count: Int = 0
    
    for (i in 0 until N - 1) {
        if (S[i] == '0') {
            count += 1
            if (max < count) {
                max = count
            } else {
                count = 0
            }
        }
        if (max >= limit) {
            flag = false
            break
        }
    }
    
    if (flag) {
        println("Yes")
    } else {
        println("No")
    }
}