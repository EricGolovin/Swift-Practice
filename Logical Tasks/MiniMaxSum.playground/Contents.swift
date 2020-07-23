func miniMaxSum(arr: [Int]) -> Void {
    var arr = arr.sorted(by: <)
    var min: Int {
        var value = 0
        for num in arr {
            value += num
        }
        return value - arr.last!
    }
    var max: Int {
        var value = 0
        for num in arr {
            value += num
        }
        return value - arr.first!
    }
    print("\(min) \(max)")
}

miniMaxSum(arr: [2, 1, 5, 3, 4]) // 10 14
