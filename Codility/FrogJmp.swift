import Foundation

public func solution(_ X : Int, _ Y : Int, _ D : Int) -> Int {
    let target = Y - X
    if target % D == 0{
        return target / D
    } else{
        return target / D + 1
    }
}

print(solution(10, 85, 30)) //3
