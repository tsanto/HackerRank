import Foundation

func repeatedString(s: String, n: Int) -> Int {
    guard s.count != 1 else {
        return s.lowercased() == "a" ? n : 0
    }

    var aTimes = s.filter {$0.lowercased() == "a"}.count

    let repeatedTimes = abs(n/s.count)
    aTimes *= repeatedTimes

    let remainder = n % s.count

    for index in 0..<remainder {
        if Array(s)[index].lowercased() == "a" {
            aTimes += 1
        }
    }

    return aTimes
}

repeatedString(s: "aac", n: 100)
