func staircase(n: Int) -> Void {
    var buffer = ""
    for i in 1...n {
        if n - i > 0 {
            for _ in 1...(n - i) {
                buffer += " "
            }
        }
        for _ in 1...i {
            buffer += "#"
        }
        buffer += "\n"
    }
    print(buffer)
}

staircase(n: 6)
