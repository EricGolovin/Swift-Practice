func repeatedString(s: String, n: Int) -> Int {
    let numberOfA = s.filter{"a".contains($0)}.count
    var moduleNum = n % s.count
    var numberOfA_s = (n - moduleNum) / s.count * numberOfA
    
    for char in s {
        if moduleNum == 0 {
            break
        } else {
            moduleNum -= 1
        }
        if char == "a" {
            numberOfA_s += 1
        }
    }
    
    return numberOfA_s
}


print(repeatedString(s: "aba", n: 1000000000000)) // 7
print(repeatedString(s: "a", n: 1000000000000)) // 1000000000000
print(repeatedString(s: "aab", n: 113)) // 76
