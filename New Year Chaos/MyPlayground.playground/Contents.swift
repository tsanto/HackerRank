import Foundation

func minimumBribes(q: [Int]) -> Void {
    var bribes = 0

    for (index, value) in q.enumerated() {
        guard value - index - 1 <= 2 else {
            print("Too chaotic")
            return
        }

        let startingPoint = max(value - 2, 0)

        if startingPoint < index {
            for i in startingPoint..<index {
                if q[i] > value { bribes += 1}
            }
        }
    }

    print(bribes)
}

minimumBribes(q: [1, 2, 5, 3, 7, 8, 6, 4])

