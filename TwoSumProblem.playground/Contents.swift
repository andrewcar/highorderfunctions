import Foundation

////////////////////////
///////TWO//SUM////////
////////PROBLEM/////////
////////////////////////

// return a boolean value if there are two numbers in the array that equal a sum

let numbers = [1, 3, 6, 7, 7, 12, 14]

// 1. Brute Force - Nested For-Loop compare all (n2)

func bruteForce(array: [Int], sum: Int) -> Bool {

    for i in 0..<array.count {
        for j in 0..<array.count where j != i {
            if array[j] + array[i] == sum {
                print("TRUE: \(array[j]) + \(array[i])")
                return true
            } else {
                print("FALSE: \(array[j]) + \(array[i])")
            }
        }
    }

    return false
}

bruteForce(array: numbers, sum: 2)
