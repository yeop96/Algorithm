import Foundation

public func solution(_ X : Int, _ A : inout [Int]) -> Int {
    var leaves = Set<Int>()
    for (i, e) in A.enumerated() {
        if e <= X{
            leaves.insert(e)
            if leaves.count == X{
                return i
            }
        }
    }
    return -1
}

var a = [2, 2, 2, 2, 2] //X:2 -> -1
//var a = [1, 3, 1, 4, 2, 3, 5, 4] //X:5 -> 6
print(solution(2, &a))
