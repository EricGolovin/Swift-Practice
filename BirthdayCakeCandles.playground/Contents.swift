func birthdayCakeCandles(ar: [Int]) -> Int {
    var result = 0
    let sortedAr = ar.sorted(by: >)
    
    for element in sortedAr {
        if element == sortedAr[0] {
            result += 1
        }
    }
    
    return result
}


print(birthdayCakeCandles(ar: [3, 2, 1, 3]))
