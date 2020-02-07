func foldArray(_ arr: [Int], times: Int) -> [Int] {
    if arr.count == 1 { return arr }
    
    var mutableArr = arr
    var counter = 0
    
    while counter != times {
        let odd: Bool = { if mutableArr.count % 2 == 0 { return true } else { return false } }()
        var index = 0
        
        for _ in mutableArr {
            if mutableArr.count == 1 { break }
            
            let el =  mutableArr.removeLast()
            mutableArr[index] += el
            index += 1
            
            if odd && mutableArr.count == index {
                break
            } else if mutableArr.count == (index + 1) {
                break
            }
        }
        counter += 1
    }
    
    return mutableArr
}

var foldedArr = foldArray([1,2,2,5,3,5], times: 2)
//var foldedArr = foldArray([0, 0, 0, 0, 0, 0, 0, 0, 0, 0], times: 4)
print(foldedArr)
