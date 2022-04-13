import Foundation

public func solution(_ A : inout [Int]) -> Int {
    var arr = [Int]()
    var front = 0
    var back = A.reduce(0, +)
    for i in 0..<A.count - 1{
        front += A[i]
        back -= A[i]
        arr += [abs(front - back)]
    }
    print(arr)
    return arr.min()!
}

//var a = [-1000, 1000] //2000
var a = [3, 1, 2, 4, 3]
print(solution(&a)) //1
