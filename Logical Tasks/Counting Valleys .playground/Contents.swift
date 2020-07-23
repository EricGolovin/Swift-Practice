func countingValleys(n: Int, s: String) -> Int {
    var numOfValleys = 0, index = 0
    for letter in s {
        if letter == "U" {
            index += 1
        } else if letter == "D" {
            index -= 1
            if index + 1 == 0 {
                numOfValleys += 1
            }
        }
    }
    return numOfValleys
}

print(countingValleys(n: 12, s: "DDUUDDUDUUUD"))
