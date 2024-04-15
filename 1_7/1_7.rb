require 'set'

def main
    s = "1001"
    x = 1
    c = s.count('1')
    flag = true
    n = s.length
    limit = x * c + 1
    max_count = 0
    count = 0
    for i in 0..n-1
        if s[i] == '0'
            count += 1
            if max_count < count
                max_count = count
            else
                count = 0
            end
        end
        if max_count >= limit
            flag = false
            break
        end
    end
    if flag
        puts "Yes"
    else 
        puts "No"
    end
end

main