import Foundation

public func solution(_ S : inout String) -> Int {
    let splitS = S.split(separator: " ").map{String($0)}
    var validPasswords = [String]()
    //영어 숫자만 가능
    //문자는 짝수 갯수
    //숫자는 홀수 갯수
    splitS.forEach{
        let letters = $0.filter({String($0).isLowerCased || String($0).isUpperCased})
        let numbers = $0.filter({String($0).isNumeric})
        if letters.count + numbers.count == $0.count{
            if letters.count % 2 == 0 && numbers.count % 2 == 1 {
                validPasswords += [$0]
            }
        }
    }
    
    if validPasswords.isEmpty{
        return -1
    }
    let counting = validPasswords.map({$0.count})
    return counting.max()!
}

extension String {
    var isLowerCased: Bool {
        for c in utf8 where !((97...122) ~= c) { return false }
        return true
    }
    var isUpperCased: Bool {
        for c in utf8 where !((65...90) ~= c) { return false }
        return true
    }
    var isNumeric: Bool {
        for c in utf8 where !((48...57) ~= c) { return false }
        return true
    }
}

var testCase = "test 5 a0A pass007 ?xy1"
print(solution(&testCase))
