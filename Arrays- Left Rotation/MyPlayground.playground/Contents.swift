import Foundation

func rotLeft(a: [Int], d: Int) -> [Int] {
    let dDigits = d % a.count
    let end = Array(a[0..<dDigits])
    let begginning = Array(a[dDigits..<a.count])

    return begginning + end
}

rotLeft(a: [1,2,3,4,5], d: 2)
