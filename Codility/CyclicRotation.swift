import Foundation

public func solution(_ A : inout [Int], _ K : Int) -> [Int] {
    if A.isEmpty{
        return []
    }
    
    let shiftCount = K % A.count
    let frontIndex = A.count - shiftCount
    
    let result = A[frontIndex..<A.count].map({Int($0)}) + A[0..<frontIndex].map({Int($0)})
    return result
}

var A = [3, 8, 9, 7, 6] // 9 7 6 3 8
var B = [1, 2, 3, 4] // 1 2 3 4
print(solution(&A, 3))
print(solution(&B, 4))
