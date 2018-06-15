import Foundation

////////////////////////
///////TWO//SUM////////
////////PROBLEM/////////
////////////////////////

// return a boolean value if there are two numbers in the array that equal a sum

let numbers = [1, 3, 6, 7, 7, 12, 14]

// 1. Brute Force - Nested For-Loop to compare all (n2)

func bruteForce(array: [Int], sum: Int) -> Bool {

    for i in 0..<array.count {
        for j in 0..<array.count where j != i {
            if array[j] + array[i] == sum {
                return true
            }
        }
    }

    return false
}

bruteForce(array: numbers, sum: 2)

// 2. Binary search for complement (n log n)

func binarySearch(array: [Int], key: Int) -> Bool {
    
    if array.count == 0 { return false }
    
    let minIndex = 0
    let maxIndex = array.count - 1
    let midIndex = maxIndex/2
    let midValue = array[midIndex]
    
    if key < array[minIndex] || key > array[maxIndex] {
        return false
    }
    
    if key < midValue {
        let slice = Array(array[0...midIndex - 1])
        return binarySearch(array: slice, key: key)
    }
    
    if key > midValue {
        let slice = Array(array[midIndex + 1...maxIndex])
        return binarySearch(array: slice, key: key)
    }
    
    if key == midValue {
        return true
    }
    return false
}

func twoSumBinarySearch(array: [Int], sum: Int) -> Bool {
    
    if array.count == 0 { return false }
    
    for i in 0..<array.count {
        let complement = sum - array[i]
        var tempArray = array
        tempArray.remove(at: i)
        
        let hasComplement = binarySearch(array: tempArray, key: complement)
        if hasComplement {
            return true
        }
    }
    return false
}

twoSumBinarySearch(array: numbers, sum: 15)

// 3. Move pointer from either end (linear)

func twoSumPointers(array: [Int], sum: Int) -> Bool {
    
    if array.count == 0 { return false }
    
    var lowIndex = 0
    var highIndex = array.count - 1
    
    while lowIndex < highIndex {
        let sumOfItems = array[lowIndex] + array[highIndex]
        
        if sumOfItems == sum {
            return true
        } else if sumOfItems < sum {
            lowIndex += 1
        } else if sumOfItems > sum {
            lowIndex -= 1
        }
    }
    return false
}

twoSumPointers(array: numbers, sum: 15)







