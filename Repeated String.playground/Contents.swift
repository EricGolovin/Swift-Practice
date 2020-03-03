func repeatedString(s: String, n: Int) -> Int {
    var moduleNum = n % s.count
    let numberOfA = s.filter{"a".contains($0)}.count

    if moduleNum == 0 {
        print("first")
        return numberOfA * (n / s.count)
    } else {
        print("second")
        var result = 0
        print("moduleNum = \(moduleNum)")
        while moduleNum >= 0 {
            if s[s.index(s.startIndex, offsetBy: 0)] == "a" {
                print(s[s.index(s.startIndex, offsetBy: moduleNum)])
                result += 1
            }
            moduleNum -= 1
        }
        print("result = \(result)")
        return result + (numberOfA * ((n - moduleNum) / s.count))
    }
}


print(repeatedString(s: "aba", n: 10))
print("\n------------\n")
print(repeatedString(s: "a", n: 1000000000000))
print("\n------------\n")
print(repeatedString(s: "aab", n: 10)) // 588525
