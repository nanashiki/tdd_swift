public struct FizzBuzz {
    public init() {}
    
    public func run() {
        (1...100).forEach { i in
            let str = convert(i: i)
            print(str: str)
        }
    }
    
    func convert(i: Int) -> String {
        if i % 15 == 0 {
            return "FizzBuzz"
        }
        
        if i %  5 == 0 {
            return "Buzz"
        }
        
        if i %  3 == 0 {
            return "Fizz"
        }
        
        return String(i)
    }
    
    func print(str: String) {
        Swift.print(str)
    }
}
