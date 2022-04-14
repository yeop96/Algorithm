import Foundation

public func solution(_ A : inout [Int]) -> Int {
    let permutation = Set(1...A.count)
    let a = Set(A)
    
    let sub = permutation.subtracting(a)
    
    return sub.isEmpty ? 1 : 0
}

var a = [4, 1, 3, 2] //1
var b = [4, 1, 3] //0

print(solution(&a))
print(solution(&b))
