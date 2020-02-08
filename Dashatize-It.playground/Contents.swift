func dashatize(_ number: Int) -> String {
    if number == 0 {
        return String(0)
    }
    var mutableNumber = number < 0 ? -number : number
    var finalStr = ""
    var num = 0

    while mutableNumber != 0 {
        num = mutableNumber % 10
        mutableNumber /= 10

        finalStr.insert(Character(String(num)), at: finalStr.startIndex)

        if ((num % 2 != 0) || ((mutableNumber % 10) % 2 != 0)) && mutableNumber != 0  {
            finalStr.insert("-", at: finalStr.startIndex)
        }
    }
    return finalStr
}


print(dashatize(274)) // 2-7-4
print(dashatize(5311)) // 5-3-1-1
print(dashatize(0)) // 0
