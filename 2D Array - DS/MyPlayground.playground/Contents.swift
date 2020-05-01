import Foundation

func hourglassSum(arr: [[Int]]) -> Int {
    var maxSum = -90

    for lineIndex in 0...3 {
        for colIndex in 0...3 {
            var tmpValue = 0

            tmpValue += arr[lineIndex][colIndex]
            tmpValue += arr[lineIndex][colIndex+1]
            tmpValue += arr[lineIndex][colIndex+2]

            tmpValue += arr[lineIndex+1][colIndex+1]

            tmpValue += arr[lineIndex+2][colIndex]
            tmpValue += arr[lineIndex+2][colIndex+1]
            tmpValue += arr[lineIndex+2][colIndex+2]

            if tmpValue > maxSum { maxSum = tmpValue }
        }
    }

    return maxSum
}

hourglassSum(arr: [
    [-1,-1,0,-9,-2,-2],
    [-2,-1,-6,-8,-2,-5],
    [-1,-1,-1,-2,-3,-4],
    [-1,-9,-2,-4,-4,-5],
    [-7,-3,-3,-2,-9,-9],
    [-1,-3,-1,-2,-4,-5]
])
