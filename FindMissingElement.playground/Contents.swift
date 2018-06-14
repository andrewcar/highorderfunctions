import Foundation

////////////////////////
/////FIND//MISSING//////
////////ELEMENT/////////
////////////////////////

var arrayOne = [5, 3, 3, 2, 1, 9, 8, 7, 10, 17, 22, 69, 16, 92, 86, 72, 45, 44, 36, 26, 7, 4]
var arrayTwo = [5, 3, 3, 2, 1, 9, 8, 7, 10, 10, 17, 22, 69, 16, 92, 86, 72, 45, 44, 36, 26, 7]

func numberCountsDictionary(_ array: [Int]) -> [Int: Int] {
    
    var dictionary: [Int: Int] = [:]
    for number in array {
        if let count = dictionary[number] {
            dictionary[number] = count + 1
        } else {
            dictionary[number] = 1
        }
    }
    return dictionary
}

let arrayOneDictionary = numberCountsDictionary(arrayOne)
let arrayTwoDictionary = numberCountsDictionary(arrayTwo)

for number in arrayOne {
    if !arrayTwo.contains(number) {
        print(number)
    }
}

for (number, count) in arrayOneDictionary {
    for (number2, count2) in arrayTwoDictionary {
        if number == number2 {
            if count > count2 {
                print(number)
            } else if count < count2 {
                print(number2)
            }
        }
    }
}

