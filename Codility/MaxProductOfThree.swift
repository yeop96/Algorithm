import Foundation

public func solution(_ A : inout [Int]) -> Int {
    let a = A.sorted()
    let minus = a[0] * a[1] * a[A.count-1] //마이너스 두개를 곱할시도 생각
    let plus = a[A.count-3] * a[A.count-2] * a[A.count-1]
    return minus > plus ? minus : plus
}

var a = [-3, 1, 2, -2, 5, 6]
var b = [-5, 5, -5, 4]
print(solution(&a)) //60
print(solution(&b)) //125
