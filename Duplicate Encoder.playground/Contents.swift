func duplicateEncode(_ word: String) -> String {
    var charReapeatCounterDict: [Character: Int] = [:]
    let word = word.lowercased()
    

    for char in word {
        charReapeatCounterDict[char] = charReapeatCounterDict[char, default: 0] + 1
    }

    return { () -> String in
        var finalStr = ""
        for char in word {
            if charReapeatCounterDict[char]! > 1 {
                finalStr += ")"
            } else {
                finalStr += "("
            }
        }
        return finalStr
    }()
}
//
//func duplicateEncode(_ word: String) -> String {
//    var dict = [Character: Int](), word = word.lowercased()
//    for letter in word {
//        dict[letter, default: 0] += 1
//
//    }
//    return word.map { dict[$0]! > 1 ? ")" : "(" }.joined()
//}

print(duplicateEncode("din")) // =>  "((("
print(duplicateEncode("recede")) // =>  "()()()"
print(duplicateEncode("Success")) // =>  ")())())"
print(duplicateEncode("(( @")) // =>  "))(("
