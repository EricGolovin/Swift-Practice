func sockMerchant(n: Int, ar: [Int]) -> Int {
    var numberOfPairs = 0
    var mutableAr = ar
    
    for (index, value) in mutableAr.enumerated() {
        if mutableAr[index] == 0 {
            continue
        }
        
        mutableAr[index] = 0
        let foundSockIndex = mutableAr.firstIndex(of: value)
        
        if foundSockIndex != nil {
            mutableAr[foundSockIndex!] = 0
            numberOfPairs += 1
        } else {
            mutableAr[index] = value
        }
    }
    return numberOfPairs
}

print(sockMerchant(n: 9, ar: [10, 20, 20, 10, 10, 30, 50, 10, 20])) // 3
