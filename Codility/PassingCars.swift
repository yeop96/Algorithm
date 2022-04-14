import Foundation

public func solution(_ A : inout [Int]) -> Int {
    var answer = 0
    var zero = 0
    for a in A{
        if a == 0{
            zero += 1
        } else{
            answer += zero
            if answer > 1_000_000_000{
                return -1
            }
        }
    }
    return answer
}

var a = [0, 1, 0, 1, 1] //5
print(solution(&a))
