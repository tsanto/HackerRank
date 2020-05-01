import Foundation

func arrayManipulation(n: Int, queries: [[Int]]) -> Int {
    var array = Array(repeating: 0, count: n+2)
    var maxValue = Int.min

    queries.forEach { query in
        let leftIndex = query[0] - 1
        let rightIndex = query[1] - 1
        let value = query[2]

        array[leftIndex] += value
        array[rightIndex+1] -= value
    }

    var sum = 0
    array.forEach { value in
        sum += value
        maxValue = max(maxValue, sum)
    }

    return maxValue
}

arrayManipulation(n: 5, queries: [
    [1,2,100],
    [2,5,100],
    [3,4,100]
])
