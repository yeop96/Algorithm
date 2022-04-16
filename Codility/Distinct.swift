import Foundation


public func solution(_ A : inout [Int]) -> Int {
    return Set(A).count
}


var arr = [2, 1, 1, 2, 3, 1]
print(solution(&arr)) //3
