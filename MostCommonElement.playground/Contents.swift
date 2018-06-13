import Foundation

////////////////////////
//////MOST//COMMON//////
////////ELEMENT/////////
////////////////////////

var colors = ["red", "green", "blue", "red", "blue", "cyan", "orange", "red", "red", "cyan", "blue", "yellow", "blue", "orange", "purple", "green", "purple", "purple", "cyan", "red", "blue", "orange", "green", "red", "purple", "cyan", "purple", "purple"]

func getMostCommonColor(array: [String]) -> [String] {

    var topColors: [String] = []
    var colorDictionary: [String: Int] = [:]

    // ADD COLOR COUNTS TO DICTIONARY
    for color in array {
        if let count = colorDictionary[color] {
            colorDictionary[color] = count + 1
        } else {
            colorDictionary[color] = 1
        }
    }

    // GET HIGHEST COUNT
    let highestValue = colorDictionary.values.max()

    // ADD COLOR(S) WITH HIGHEST VALUE TO ARRAY
    for (color, count) in colorDictionary {
        if count == highestValue {
            topColors.append(color)
        }
    }

    /* OR USE FILTER
    let filteredColorDictionary = colorDictionary.filter { (color, count) -> Bool in
        return count == highestValue
    }
    topColors = filteredColorDictionary.map{$0.key}
     */

    return topColors
}

getMostCommonColor(array: colors)

