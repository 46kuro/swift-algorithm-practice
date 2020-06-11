// Reference: https://github.com/raywenderlich/swift-algorithm-club/tree/master/Linear%20Search

func linearSearch<T: Equatable>(_ array: [T], _ object: T) -> Int? {
    array.enumerated().first { $0.element == object }.map { $0.offset }
}

let array = [5, 2, 4, 7]
linearSearch(array, 2)
linearSearch(array, 1)
