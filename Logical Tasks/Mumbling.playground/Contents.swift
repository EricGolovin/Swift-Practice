func accum(_ s: String) -> String {
    var finalStr = "";
    for (index, letter) in s.enumerated() {
        finalStr += letter.uppercased()
        for _ in 0..<index  {
            finalStr.append(letter.lowercased())
        }
        if index + 1 != s.count {
            finalStr += "-"
        }
    }
    return finalStr
}


print(accum("abcd"))
