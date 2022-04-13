import Foundation

public func solution(_ A : inout [Int]) -> Int{
    var counter = [Int: Int]()
    A.forEach { counter[$0, default: 0] += 1 }
    
    for result in counter{
        if result.value % 2 == 1{
            return result.key
        }
    }
    
    return 0
}

var A = [9, 3, 9, 3, 9, 7, 9] // 7
var B = [2, 2, 3, 3, 4] // 4
print(solution(&A))
print(solution(&B))
