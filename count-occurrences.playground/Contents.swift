import UIKit

let a = [ 0, 1, 1, 3, 3, 3, 3, 6, 8, 10, 11, 11 ]
countOccurrences(of: 3, in: a) // gives 4

func countOccurrences<T: Comparable>(of key: T, in array: [T]) -> Int {
    array.filter { $0 == key }.count
}
