func foldArray(_ arr: [Int], times: Int) -> [Int] {
    if arr.count == 1 { return arr }
    
    var mutableArr = arr
    var counter = 0
    
    while counter != times {
        let odd: Bool = { if mutableArr.count % 2 == 0 { return true } else { return false } }()
        if odd {
            print("\tODD counter = \(counter)")
            var index = 0
            for element in mutableArr {
                if mutableArr.count == 1 { break }
                print("Element[\(index)] = \(element)")
                print(mutableArr)
                if mutableArr[index] != mutableArr.last {
                    let el =  mutableArr.removeLast()
                    print("mutableArr[\(index)] (\(mutableArr[index])) += lastElement (\(el)) \n")
                    mutableArr[index] += el
                    index += 1
                }
                if mutableArr.count == index {
                    break
                }
            }
            counter += 1
            print("finalArr = \(mutableArr)")
        } else {
            print("\tEVEN counter = \(counter)")
            var index = 0
            for element in mutableArr {
                if mutableArr.count == 1 { break }
                print("Element[\(index)] = \(element)")
                print(mutableArr)
                if mutableArr[index] != mutableArr.last {
                    let el =  mutableArr.removeLast()
                    print("mutableArr[\(index)] (\(mutableArr[index])) += lastElement (\(el)) \n")
                    mutableArr[index] += el
                    index += 1
                }
                if mutableArr.count == index {
                    break
                }
            }
            counter += 1
            print("finalArr = \(mutableArr)")
        }
    }
    
    return mutableArr
}

var foldedArr = foldArray([1,2,2,5,3,5], times: 3)
print(foldedArr)
