import Foundation

func countingValleys(n: Int, s: String) -> Int {
    var valleys = 0
    var seaLevel: Double = 0

    var walkedThroughAValley: Bool { return seaLevel == -1 }

    let sArray = Array(s)
    for index in 0..<n {
        guard sArray[index] == "U" else {
            seaLevel -= 1
            continue
        }

        if walkedThroughAValley { valleys += 1 }
        seaLevel += 1
    }

    return valleys
}

countingValleys(n: 8, s: "UDDDUDUU")
