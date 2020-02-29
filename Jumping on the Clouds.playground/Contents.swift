func jumpingOnClouds(c: [Int]) -> Int {
    var numberOfSteps = 0
    var index = 0
    while index < c.count - 1 {
        if index + 2 < c.count && c[index + 2] == 0 {
            index += 2
        } else {
            index += 1
        }
        numberOfSteps += 1
    }
    return numberOfSteps
}

//print(jumpingOnClouds(c: [0,0,1,0,0,1,0]))
print(jumpingOnClouds(c: [0,0,0,0,1,0]))
