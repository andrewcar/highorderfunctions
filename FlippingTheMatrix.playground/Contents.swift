import Foundation

/////////////////////////////
////////FLIPPING//THE////////
////////////MATRIX//////////
////////////////////////////

func flippingMatrix(matrix: [[Int]]) -> Int {
    let matrixLength = matrix.count
    let topLeftMatrixLength = matrixLength / 2
    var sum = 0
    
    for rowIndex in 0..<topLeftMatrixLength {
        for columnIndex in 0..<topLeftMatrixLength {
            let topLeftQuadrantPoint = matrix[rowIndex][columnIndex]
            let bottomLeftQuadrantPoint = matrix[matrixLength - 1 - rowIndex][columnIndex]
            let topRightQuadrantPoint = matrix[rowIndex][matrixLength - 1 - columnIndex]
            let bottomRightQuadrantPoint = matrix[matrixLength - 1 - rowIndex][matrixLength - 1 - columnIndex]
            
            var maximum = max(topLeftQuadrantPoint, bottomLeftQuadrantPoint)
            maximum = max(maximum, topRightQuadrantPoint)
            maximum = max(maximum, bottomRightQuadrantPoint)
            
            sum += maximum
        }
    }
    return sum
}
