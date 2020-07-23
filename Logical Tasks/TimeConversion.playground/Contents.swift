func timeConversion(_ s: String) -> String {
    var result = ""
    let s = s.split(separator: ":")
    var hours = Int(s[0])!
    var value = String(s[2])
    var dayTime: Bool {
        if s[2][s[2].index(s[2].startIndex, offsetBy: 2)] == "A" {
            return true
        } else {
            return false
        }
    }
    
    if dayTime {
        result += String(hours)
    } else {
        result += String(hours + 12 == 24 ? 0 : hours + 12)
    }
    
    result += ":" + s[1] + ":" + value
    result.removeLast()
    result.removeLast()
    
    return result
}

print(timeConversion("07:05:45PM")) //19:05:45
