func diagonalDifference(arr: [[Int]]) -> Int {
    var pricipalDiagonal = 0, secondaryDiagonal = 0
    for outter in 0..<arr.count {
        for inner in 0..<arr[outter].count {
            if outter == inner {
                pricipalDiagonal += arr[outter][inner]
            }
            if (outter + inner) == arr.count - 1 {
                secondaryDiagonal += arr[outter][inner]
            }
        }
    }
    return pricipalDiagonal < secondaryDiagonal ? secondaryDiagonal - pricipalDiagonal : pricipalDiagonal - secondaryDiagonal
}

print(diagonalDifference(arr: [[11, 2, 4], [4, 5, 6], [10, 8, -12]]))
