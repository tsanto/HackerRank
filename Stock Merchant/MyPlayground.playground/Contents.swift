import Foundation

func sockMerchant(n: Int, ar: [Int]) -> Int {
    var pairOfSocks = 0

    let numberGroups = Array(Dictionary(grouping:ar){$0}.values)

    numberGroups.forEach { group in
        pairOfSocks += abs(group.count/2)
    }

    return pairOfSocks
}

sockMerchant(n: 7, ar: [1,2,1,2,1,3,2])
