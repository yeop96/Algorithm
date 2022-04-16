import Foundation

// 두 수의 평균이 있을 때 평균은 두 수 중 작은 수 이상 값이 된다.

public func solution(_ A : inout [Int]) -> Int {
    var minAvg = Double(A[0] + A[1]) / 2.0
    var minIndex = 0
    for i in 2..<A.count{
        var avg = Double(A[i-2] + A[i-1] + A[i]) / 3.0
        if (minAvg > avg){
            minAvg = avg
            minIndex = i - 2
        }
        
        avg = Double(A[i-1] + A[i]) / 2.0
        if (minAvg > avg){
            minAvg = avg
            minIndex = i - 1
        }
    }
    return minIndex
}


var arr = [4, 2, 2, 5, 1, 5, 8]
print(solution(&arr)) //1
