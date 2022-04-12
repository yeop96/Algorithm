import Foundation

public func solution(_ N : Int) -> Int {
    let binary = String(N, radix: 2)
    var oneFlag = false
    var zeroCount = 0
    var zeroLength = [0]
    
    binary.forEach {
        if $0 == "1"{
            if oneFlag{
                zeroLength += [zeroCount]
                zeroCount = 0
            } else{
                oneFlag = true
            }
        }
        else if oneFlag && $0 == "0"{
            zeroCount += 1
        }
    }
    
    return zeroLength.max()!
}

print(solution(1041)) // 10000010001 -> 5
print(solution(529)) // 1000010001 -> 4
print(solution(15)) // 1111 -> 0
print(solution(32)) // 100000 -> 0
