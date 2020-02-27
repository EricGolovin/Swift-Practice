func countingValleys(n: Int, s: String) -> Int {
    var numOfValleys = 0
    var flag = false
    var index: Int = 0 {
        willSet {
            if newValue < 0 {
                flag = true
            }
        }
        didSet {
            if oldValue == 0 && flag {
                numOfValleys += 1
            }
        }
    }
    
    for letter in s {
        if letter == "U" {
            index += 1
        } else if letter == "D" {
            index -= 1
        }
        print("Index = \(index) letter = \(letter)")
        
    }
    return numOfValleys
}

print(countingValleys(n: 12, s: "DDUUDDUDUUUD"))
