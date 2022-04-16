import Foundation

//배열이 정렬되어 있으면 세가지 경우를 모두 확인하지 않고 작은 인덱스 2개의 합과 나머지 큰 인덱스의 값만 비교하면 성립
public func solution(_ A : inout [Int]) -> Int {
    guard A.count >= 3 else { return 0 }
    let a = A.sorted()
    
    for i in 0...A.count-3 {
        if a[i] + a[i + 1] > a[i + 2]{
            return 1
        }
    }
    return 0
}


var a = [10, 2, 5, 1, 8, 20]
var b = [10, 50, 5, 1]

print(solution(&a)) //1
print(solution(&b)) //0
