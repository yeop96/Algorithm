import Foundation

public func solution(_ A : Int, _ B : Int, _ K : Int) -> Int {
    let a = Int(A/K)
    let b = Int(B/K)
    
    let result = b - a
    return A % K == 0 ? result + 1 : result
}

print(solution(6, 11, 2)) //3
