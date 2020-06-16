// Reference: - https://github.com/raywenderlich/swift-algorithm-club/tree/master/Binary%20Search
import UIKit

// An unsorted array of numbers
let numbers = [11, 59, 3, 2, 53, 17, 31, 7, 19, 67, 47, 13, 37, 61, 29, 43, 5, 41, 23]

// Binary search requires that the array is sorted from low to high
let sorted = numbers.sorted()

// Using recursive solution
binarySearch(sorted, key: 2, range: 0 ..< sorted.count)   // gives 0
binarySearch(sorted, key: 67, range: 0 ..< sorted.count)  // gives 18
binarySearch(sorted, key: 43, range: 0 ..< sorted.count)  // gives 13
binarySearch(sorted, key: 42, range: 0 ..< sorted.count)  // nil
// Using iterative solution
binarySearch(sorted, key: 2)   // gives 0
binarySearch(sorted, key: 67)  // gives 18
binarySearch(sorted, key: 43)  // gives 13
binarySearch(sorted, key: 42)  // nil

func binarySearch<T: Comparable>(_ a: [T], key: T, range: Range<Int>) -> Int? {
    if range.lowerBound >= range.upperBound {
        return nil
    }
    let mid = (range.upperBound + range.lowerBound) / 2
    if a[mid] < key {
        return binarySearch(a, key: key, range: mid+1 ..< range.upperBound)
    } else if a[mid] > key {
        return binarySearch(a, key: key, range: range.lowerBound ..< mid)
    } else {
        return mid
    }
}

func binarySearch<T: Comparable>(_ a: [T], key: T) -> Int? {
    var lowerBound = 0
    var upperBound = a.count
    while upperBound > lowerBound {
        let mid = (upperBound + lowerBound) / 2
        if a[mid] < key {
            lowerBound = mid + 1
        } else if a[mid] > key {
            upperBound = mid
        } else {
            return mid
        }
    }
    return nil
}
