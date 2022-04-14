import Foundation

public func solution(_ A : inout [Int]) -> Int {
    let postiveA = A.filter({$0 > 0}).sorted()
    var count = 1
    if postiveA.isEmpty{
        return 1
    }
    for a in postiveA{
        if a == count{
            count += 1
        } else if a < count{
            continue
        } else{
            return count
        }
    }
    return count
}


var a = [1, 3, 6, 4, 1, 2, -10] //5
print(solution(&a))
