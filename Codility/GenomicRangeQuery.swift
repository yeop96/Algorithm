import Foundation

func haveMin(arr: [Int], from: Int, to: Int) -> Bool {
    let min = arr[from]
    let max = arr[to+1]
    
    if max - min > 0 {
        return true
    } else {
        return false
    }
}

public func solution(_ S : inout String, _ P : inout [Int], _ Q : inout [Int]) -> [Int] {
    
    var result = [Int]()

    var a = [0]
    var c = [0]
    var g = [0]
    var t = [0]
    
    for (i, s) in S.enumerated() {
        switch s {
        case "A":
            a += [a[i] + 1]
            c += [c[i]]
            g += [g[i]]
            t += [t[i]]
        case "C":
            a += [a[i]]
            c += [c[i] + 1]
            g += [g[i]]
            t += [t[i]]
        case "G":
            a += [a[i]]
            c += [c[i]]
            g += [g[i] + 1]
            t += [t[i]]
        case "T":
            a += [a[i]]
            c += [c[i]]
            g += [g[i]]
            t += [t[i] + 1]
        default:
            a += [a[i]]
            c += [c[i]]
            g += [g[i]]
            t += [t[i]]
        }
    }
    
    for i in 0..<P.count {
        if haveMin(arr: a, from: P[i], to: Q[i]) {
            result.append(1)
        } else if haveMin(arr: c, from: P[i], to: Q[i]) {
            result.append(2)
        } else if haveMin(arr: g, from: P[i], to: Q[i]) {
            result.append(3)
        } else {
            result.append(4)
        }
    }
    
    return result
}


var s = "CAGCCTA"
var p = [2, 5, 0]
var q = [4, 5, 6]
print(solution(&s, &p, &q)) //[2, 4, 1]
