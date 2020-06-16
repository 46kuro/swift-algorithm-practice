import UIKit

let a = [ 0, 1, 1, 3, 3, 3, 3, 6, 8, 10, 11, 11 ]
countOccurrences(of: 3, in: a) // gives 4

func countOccurrences<T: Comparable>(of key: T, in array: [T]) -> Int {

    var leftBoundaryIndex: Int {
        var min = 0
        var max = array.count
        while min < max {
            let mid = (max + min) / 2
            if array[mid] < key {
                min = mid + 1
            } else {
                max = mid
            }
        }
        return min
    }

    var rightBoundaryIndex: Int {
        var min = 0
        var max = array.count
        while min < max {
            let mid = (max + min) / 2
            if array[mid] > key {
                max = mid
            } else {
                min = mid + 1
            }
        }
        return min
    }

    return rightBoundaryIndex - leftBoundaryIndex
}
