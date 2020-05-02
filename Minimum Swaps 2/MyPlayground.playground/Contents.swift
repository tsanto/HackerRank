import Foundation

func minimumSwaps(arr: [Int]) -> Int {
    var minimumSwaps = 0
    var array = arr

    for index in 0..<array.count {
        if array[index] != index + 1 {
            var startingPoint = index

            while array[startingPoint] != index + 1 {
                startingPoint += 1
            }

            let tempValue = array[startingPoint]

            array[startingPoint] = array[index]
            array[index] = tempValue

            minimumSwaps += 1
        }
    }


    return minimumSwaps
}

minimumSwaps(arr: [4,3,1,2])
