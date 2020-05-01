import Foundation

func jumpingOnClouds(c: [Int]) -> Int {
    var jump = 0
    var currLocation = 0

    while currLocation < c.count - 2 {
        if c[currLocation + 2] == 1 {
            jump += 2
            currLocation += 3
        } else {
            jump += 1
            currLocation += 2
        }
    }
    return currLocation == c.count - 1 ? jump : jump + 1
}

jumpingOnClouds(c: [0,0,1,0,0,1,0])
