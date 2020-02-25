struct Digit {
    var number: Int
    init(number: Int) {
        self.number = number
    }
}

extension Digit {
    init() {
        self.init(number: 42)
    }
}

var num = Digit()
print(num.number)
