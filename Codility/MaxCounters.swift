import Foundation

public func solution(_ N : Int, _ A : inout [Int]) -> [Int] {
    var counter = Array(repeating: 0, count: N)
    var maxCounter = 0
    var maxRepeatting = 0
    for i in A{
        if i == N+1 && maxCounter > maxRepeatting{
            counter = Array(repeating: maxCounter, count: N)
            maxRepeatting = maxCounter
        } else if i <= N{
            counter[i-1] += 1
            maxCounter = max(counter[i-1], maxCounter)
        }
    }
    
    return counter
}

var a = [3, 4, 4, 6, 1, 4, 4] //[3, 2, 2, 4, 2]
var b = [1, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6] //[1, 1, 1, 1, 1]
print(solution(5, &a))
print(solution(5, &b))
