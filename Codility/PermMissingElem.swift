import Foundation

public func solution(_ A : inout [Int]) -> Int {
    let arr = Set(1...A.count+1)
    let a = Set(A.sorted())
    
    return arr.subtracting(a).first! //차집합
}

var A = [2, 3, 1, 5]
print(solution(&A)) // 4
